package com.sunelan.netspeed;

import android.app.usage.NetworkStats;
import android.app.usage.NetworkStatsManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.TrafficStats;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Collects per-uid network usage of the current day and writes it to
 * {@code /data/user/0/com.android.systemui/files/netspeed_stats.json} so that the KernelSU
 * WebUI (running as root) can read it.
 */
final class StatsCollector {

    private static final String TAG = "NetSpeed";
    private static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "NetSpeedStats");
        thread.setDaemon(true);
        return thread;
    });
    private static final AtomicBoolean BUSY = new AtomicBoolean(false);

    private static long lastTotalRx = -1L;
    private static long lastTotalTx = -1L;
    private static long lastTotalAt;

    private StatsCollector() {
    }

    static void collectAsync(Context context) {
        if (context == null || !BUSY.compareAndSet(false, true)) {
            Log.i(TAG, "collect skipped (busy or no context)");
            return;
        }
        final Context app = context.getApplicationContext();
        EXECUTOR.execute(() -> {
            try {
                collect(app);
            } catch (Throwable t) {
                Log.w(TAG, "collect stats failed", t);
            } finally {
                BUSY.set(false);
            }
        });
    }

    private static void collect(Context context) {
        long now = System.currentTimeMillis();
        long startOfDay = startOfToday();

        Map<Integer, long[]> perUid = new LinkedHashMap<>();
        NetworkStatsManager manager =
                (NetworkStatsManager) context.getSystemService(Context.NETWORK_STATS_SERVICE);
        if (manager != null) {
            readType(manager, ConnectivityManager.TYPE_WIFI, startOfDay, now, perUid);
            readType(manager, ConnectivityManager.TYPE_MOBILE, startOfDay, now, perUid);
        }

        PackageManager pm = context.getPackageManager();
        JSONArray apps = new JSONArray();
        long totalRx = 0L;
        long totalTx = 0L;
        for (Map.Entry<Integer, long[]> entry : perUid.entrySet()) {
            long[] usage = entry.getValue();
            totalRx += usage[0];
            totalTx += usage[1];
            JSONObject item = new JSONObject();
            try {
                item.put("uid", entry.getKey());
                item.put("rx", usage[0]);
                item.put("tx", usage[1]);
                item.put("name", resolveName(pm, entry.getKey()));
            } catch (Throwable ignored) {
                // skip malformed entry
            }
            apps.put(item);
        }

        long totalDeviceRx = TrafficStats.getTotalRxBytes();
        long totalDeviceTx = TrafficStats.getTotalTxBytes();
        long sampledAt = android.os.SystemClock.elapsedRealtime();
        double speedRx = 0d;
        double speedTx = 0d;
        if (lastTotalRx >= 0 && sampledAt > lastTotalAt) {
            double seconds = (sampledAt - lastTotalAt) / 1000d;
            speedRx = Math.max(0d, (totalDeviceRx - lastTotalRx) / seconds);
            speedTx = Math.max(0d, (totalDeviceTx - lastTotalTx) / seconds);
        }
        lastTotalRx = totalDeviceRx;
        lastTotalTx = totalDeviceTx;
        lastTotalAt = sampledAt;

        JSONObject root = new JSONObject();
        try {
            root.put("timestamp", now);
            root.put("dayStart", startOfDay);
            root.put("speedRx", speedRx);
            root.put("speedTx", speedTx);
            root.put("totalRx", totalRx);
            root.put("totalTx", totalTx);
            root.put("deviceRx", totalDeviceRx);
            root.put("deviceTx", totalDeviceTx);
            root.put("apps", apps);
        } catch (Throwable ignored) {
            return;
        }

        ContentValues values = new ContentValues();
        values.put(NetspeedProvider.COLUMN_JSON, root.toString());
        try {
            context.getContentResolver().insert(NetspeedProvider.STATS_URI, values);
            Log.i(TAG, "stats written: apps=" + apps.length());
        } catch (Throwable t) {
            Log.w(TAG, "cannot publish stats", t);
        }
    }

    private static void readType(NetworkStatsManager manager, int networkType, long start, long end,
                                 Map<Integer, long[]> out) {
        NetworkStats stats = null;
        try {
            stats = manager.querySummary(networkType, null, start, end);
        } catch (Throwable t) {
            Log.w(TAG, "querySummary(" + networkType + ") failed: " + t);
            return;
        }
        if (stats == null) {
            return;
        }
        try {
            NetworkStats.Bucket bucket = new NetworkStats.Bucket();
            while (stats.hasNextBucket()) {
                stats.getNextBucket(bucket);
                int uid = bucket.getUid();
                long[] usage = out.get(uid);
                if (usage == null) {
                    usage = new long[2];
                    out.put(uid, usage);
                }
                usage[0] += bucket.getRxBytes();
                usage[1] += bucket.getTxBytes();
            }
        } catch (Throwable t) {
            Log.w(TAG, "reading buckets failed: " + t);
        } finally {
            try {
                stats.close();
            } catch (Throwable ignored) {
                // ignore
            }
        }
    }

    private static String resolveName(PackageManager pm, int uid) {
        String[] packages = pm.getPackagesForUid(uid);
        if (packages == null || packages.length == 0) {
            return "uid " + uid;
        }
        try {
            return pm.getApplicationLabel(pm.getApplicationInfo(packages[0], 0)).toString();
        } catch (Throwable t) {
            return packages[0];
        }
    }

    private static long startOfToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTimeInMillis();
    }
}
