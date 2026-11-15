package com.sunelan.netspeed;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Reads the user configuration from the module's ContentProvider and keeps it in sync while the
 * settings screen is open (the provider calls {@code notifyChange} after every edit).
 */
final class SettingsStore {

    interface Listener {
        void onSettingsChanged(ThemeConfig.Values values);
    }

    private static final List<Listener> LISTENERS = new CopyOnWriteArrayList<>();
    private static volatile ThemeConfig.Values current = ThemeConfig.Values.defaults();
    private static Context appContext;
    private static ContentObserver observer;

    private SettingsStore() {
    }

    static ThemeConfig.Values get() {
        return current;
    }

    static void install(Context context) {
        if (context == null) {
            return;
        }
        Context app = context.getApplicationContext();
        appContext = app != null ? app : context;
        if (observer != null) {
            publish(reload());
            return;
        }
        // Register the observer before the first read so no edit can slip in between.
        try {
            observer = new ContentObserver(new Handler(Looper.getMainLooper())) {
                @Override
                public void onChange(boolean selfChange) {
                    publish(reload());
                }
            };
            appContext.getContentResolver().registerContentObserver(
                    NetspeedProvider.SETTINGS_URI, false, observer);
        } catch (Throwable t) {
            Log.w(NetspeedModule.TAG, "cannot observe settings", t);
        }
        publish(reload());
    }

    static void addListener(Listener listener) {
        if (listener == null) {
            return;
        }
        LISTENERS.add(listener);
        listener.onSettingsChanged(current);
    }

    static void removeListener(Listener listener) {
        LISTENERS.remove(listener);
    }

    private static void publish(ThemeConfig.Values values) {
        current = values;
        for (Listener listener : LISTENERS) {
            try {
                listener.onSettingsChanged(values);
            } catch (Throwable t) {
                Log.w(NetspeedModule.TAG, "settings listener failed", t);
            }
        }
    }

    private static ThemeConfig.Values reload() {
        if (appContext == null) {
            return ThemeConfig.Values.defaults();
        }
        Cursor cursor = null;
        try {
            ContentResolver resolver = appContext.getContentResolver();
            cursor = resolver.query(NetspeedProvider.SETTINGS_URI, null, null, null, null);
            if (cursor == null) {
                return ThemeConfig.Values.defaults();
            }
            Map<String, String> map = new HashMap<>();
            int keyIndex = cursor.getColumnIndex(NetspeedProvider.COLUMN_KEY);
            int valueIndex = cursor.getColumnIndex(NetspeedProvider.COLUMN_VALUE);
            if (keyIndex < 0 || valueIndex < 0) {
                return ThemeConfig.Values.defaults();
            }
            while (cursor.moveToNext()) {
                map.put(cursor.getString(keyIndex), cursor.getString(valueIndex));
            }
            return ThemeConfig.decode(map);
        } catch (Throwable t) {
            Log.w(NetspeedModule.TAG, "cannot read settings", t);
            return ThemeConfig.Values.defaults();
        } finally {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable ignored) {
                    // ignore
                }
            }
        }
    }

    static Uri settingsUri() {
        return NetspeedProvider.SETTINGS_URI;
    }
}
