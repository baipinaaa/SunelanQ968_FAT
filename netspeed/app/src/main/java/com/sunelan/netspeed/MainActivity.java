package com.sunelan.netspeed;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/**
 * Configuration screen of the module: colors, font size and today's per-app traffic.
 * Runs in the module's own process and talks to the hook through {@link NetspeedProvider}.
 */
public class MainActivity extends Activity {

    private static final int TEXT_PRIMARY = 0xFFE8EAED;
    private static final int TEXT_MUTED = 0xFF8B919B;
    private static final int CARD_BG = 0xFF181B20;

    private SharedPreferences prefs;
    private LinearLayout listContainer;
    private TextView totalRxView;
    private TextView totalTxView;
    private TextView historyTotalView;
    private LinearLayout historyContainer;
    private TextView previewUpView;
    private TextView previewDownView;
    private TextView sizeValueView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        prefs = getSharedPreferences(ThemeConfig.PREFS, Context.MODE_PRIVATE);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(16);
        root.setPadding(pad, pad, pad, dp(28));
        root.setBackgroundColor(0xFF0E1013);

        root.addView(header("网速显示", "状态栏 · 实时速率"));

        Switch toggle = new Switch(this);
        toggle.setText("在状态栏显示");
        toggle.setTextColor(TEXT_PRIMARY);
        toggle.setTextSize(15f);
        toggle.setChecked(prefs.getBoolean(ThemeConfig.KEY_ENABLED, true));
        toggle.setOnCheckedChangeListener((buttonView, checked) -> {
            putBoolean(ThemeConfig.KEY_ENABLED, checked);
            updatePreview();
        });
        root.addView(card(toggle));

        root.addView(sectionTitle("上行颜色"));
        root.addView(colorRow(ThemeConfig.KEY_UP_COLOR, prefs.getInt(ThemeConfig.KEY_UP_COLOR,
                ThemeConfig.DEFAULT_UP_COLOR)));

        root.addView(sectionTitle("下行颜色"));
        root.addView(colorRow(ThemeConfig.KEY_DOWN_COLOR, prefs.getInt(ThemeConfig.KEY_DOWN_COLOR,
                ThemeConfig.DEFAULT_DOWN_COLOR)));

        root.addView(sectionTitle("箭头颜色"));
        root.addView(colorRow(ThemeConfig.KEY_ARROW_COLOR, prefs.getInt(ThemeConfig.KEY_ARROW_COLOR,
                ThemeConfig.DEFAULT_ARROW_COLOR)));

        root.addView(sectionTitle("字号"));
        root.addView(sizeRow());

        LinearLayout preview = new LinearLayout(this);
        preview.setOrientation(LinearLayout.VERTICAL);
        preview.setPadding(dp(14), dp(10), dp(14), dp(10));
        preview.setBackground(cardBackground());
        previewUpView = new TextView(this);
        previewDownView = new TextView(this);
        preview.addView(previewUpView);
        preview.addView(previewDownView);
        root.addView(preview);

        root.addView(sectionTitle("今日流量"));

        LinearLayout totals = new LinearLayout(this);
        totals.setOrientation(LinearLayout.HORIZONTAL);
        totalRxView = totalBox(totals, "下载");
        totalTxView = totalBox(totals, "上传");
        root.addView(totals);

        Button refresh = new Button(this);
        refresh.setText("刷新各应用流量");
        refresh.setAllCaps(false);
        refresh.setOnClickListener(v -> requestRefresh());
        root.addView(refresh);

        listContainer = new LinearLayout(this);
        listContainer.setOrientation(LinearLayout.VERTICAL);
        listContainer.setPadding(dp(14), dp(6), dp(14), dp(6));
        listContainer.setBackground(cardBackground());
        root.addView(listContainer);

        root.addView(sectionTitle("历史记录（永久保存，不清除）"));

        historyTotalView = new TextView(this);
        historyTotalView.setTextColor(TEXT_PRIMARY);
        historyTotalView.setTextSize(13f);
        historyTotalView.setPadding(dp(14), dp(11), dp(14), dp(11));
        historyTotalView.setBackground(cardBackground());
        root.addView(historyTotalView);

        historyContainer = new LinearLayout(this);
        historyContainer.setOrientation(LinearLayout.VERTICAL);
        historyContainer.setPadding(dp(14), dp(4), dp(14), dp(4));
        historyContainer.setBackground(cardBackground());
        root.addView(historyContainer);

        TextView hint = new TextView(this);
        hint.setText("各应用流量由 SystemUI 通过 NetworkStatsManager 统计，打开本页会请求一次刷新。"
                + "若列表为空，请确认已联网，并在 LSPosed 中启用本模块、作用域勾选 SystemUI。");
        hint.setTextSize(11f);
        hint.setTextColor(TEXT_MUTED);
        hint.setPadding(0, dp(12), 0, 0);
        root.addView(hint);

        ScrollView scroll = new ScrollView(this);
        scroll.addView(root);
        scroll.setBackgroundColor(0xFF0E1013);
        setContentView(scroll);

        updatePreview();
    }

    @Override
    protected void onResume() {
        super.onResume();
        requestRefresh();
        loadStats();
        loadHistory();
    }

    private View header(String title, String subtitle) {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(0, 0, 0, dp(14));
        TextView t = new TextView(this);
        t.setText(title);
        t.setTextColor(TEXT_PRIMARY);
        t.setTextSize(20f);
        TextView s = new TextView(this);
        s.setText(subtitle);
        s.setTextColor(TEXT_MUTED);
        s.setTextSize(12f);
        box.addView(t);
        box.addView(s);
        return box;
    }

    private TextView sectionTitle(String text) {
        TextView view = new TextView(this);
        view.setText(text);
        view.setTextColor(TEXT_MUTED);
        view.setTextSize(12f);
        view.setPadding(0, dp(18), 0, dp(8));
        return view;
    }

    private View card(View child) {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(14), dp(6), dp(14), dp(6));
        box.setBackground(cardBackground());
        box.addView(child, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return box;
    }

    private GradientDrawable cardBackground() {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(CARD_BG);
        drawable.setCornerRadius(dp(13));
        return drawable;
    }

    private View colorRow(String key, int selected) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setPadding(dp(8), dp(10), dp(8), dp(10));
        row.setBackground(cardBackground());
        for (int color : ThemeConfig.PALETTE) {
            View swatch = new View(this);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, dp(26), 1f);
            params.setMargins(dp(2), 0, dp(2), 0);
            swatch.setLayoutParams(params);
            swatch.setBackground(dot(color, color == selected));
            swatch.setOnClickListener(v -> {
                putInt(key, color);
                refreshSwatches(row, key);
                updatePreview();
            });
            row.addView(swatch);
        }
        return row;
    }

    private void refreshSwatches(LinearLayout row, String key) {
        int current = prefs.getInt(key, 0xFFFFFFFF);
        for (int i = 0; i < row.getChildCount(); i++) {
            View child = row.getChildAt(i);
            int color = ThemeConfig.PALETTE[Math.min(i, ThemeConfig.PALETTE.length - 1)];
            child.setBackground(dot(color, color == current));
        }
    }

    private GradientDrawable dot(int color, boolean active) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setShape(GradientDrawable.OVAL);
        drawable.setColor(color);
        if (active) {
            drawable.setStroke(dp(2), 0xFFFFFFFF);
        } else {
            drawable.setStroke(dp(1), 0x33FFFFFF);
        }
        return drawable;
    }

    private View sizeRow() {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(14), dp(8), dp(14), dp(8));
        box.setBackground(cardBackground());

        SeekBar bar = new SeekBar(this);
        bar.setMax((int) (ThemeConfig.MAX_TEXT_SIZE - ThemeConfig.MIN_TEXT_SIZE));
        float current = prefs.getFloat(ThemeConfig.KEY_TEXT_SIZE, ThemeConfig.DEFAULT_TEXT_SIZE);
        bar.setProgress((int) (current - ThemeConfig.MIN_TEXT_SIZE));

        sizeValueView = new TextView(this);
        sizeValueView.setTextColor(TEXT_PRIMARY);
        sizeValueView.setTextSize(13f);
        sizeValueView.setPadding(dp(12), 0, 0, 0);
        sizeValueView.setText(String.format(Locale.US, "%.1f", current));

        bar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                float size = ThemeConfig.MIN_TEXT_SIZE + progress;
                sizeValueView.setText(String.format(Locale.US, "%.1f", size));
                if (fromUser) {
                    putFloat(ThemeConfig.KEY_TEXT_SIZE, size);
                    updatePreview();
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });

        box.addView(bar, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        box.addView(sizeValueView);
        return box;
    }

    private TextView totalBox(LinearLayout parent, String label) {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(dp(14), dp(12), dp(14), dp(12));
        box.setBackground(cardBackground());
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        params.setMargins(0, 0, dp(8), 0);
        box.setLayoutParams(params);

        TextView name = new TextView(this);
        name.setText(label);
        name.setTextColor(TEXT_MUTED);
        name.setTextSize(11f);

        TextView value = new TextView(this);
        value.setText("--");
        value.setTextColor(TEXT_PRIMARY);
        value.setTextSize(17f);
        value.setPadding(0, dp(4), 0, 0);

        box.addView(name);
        box.addView(value);
        parent.addView(box);
        return value;
    }

    private void updatePreview() {
        if (previewUpView == null) {
            return;
        }
        boolean enabled = prefs.getBoolean(ThemeConfig.KEY_ENABLED, true);
        int up = prefs.getInt(ThemeConfig.KEY_UP_COLOR, ThemeConfig.DEFAULT_UP_COLOR);
        int down = prefs.getInt(ThemeConfig.KEY_DOWN_COLOR, ThemeConfig.DEFAULT_DOWN_COLOR);
        float size = prefs.getFloat(ThemeConfig.KEY_TEXT_SIZE, ThemeConfig.DEFAULT_TEXT_SIZE);
        float previewSize = Math.min(22f, Math.max(10f, size + 4f));
        previewUpView.setTextSize(previewSize);
        previewDownView.setTextSize(previewSize);
        if (!enabled) {
            previewUpView.setText("已关闭，状态栏不显示网速");
            previewUpView.setTextColor(TEXT_MUTED);
            previewDownView.setText("");
            return;
        }
        previewUpView.setText("12 kB/s ↑");
        previewUpView.setTextColor(up);
        previewDownView.setText("1.2 MB/s ↓");
        previewDownView.setTextColor(down);
    }

    private void requestRefresh() {
        try {
            Intent intent = new Intent(NetspeedModule.ACTION_REFRESH);
            intent.setPackage("com.android.systemui");
            sendBroadcast(intent);
        } catch (Throwable ignored) {
            // SystemUI may not be running yet
        }
        // Give SystemUI a moment to collect, then read the provider again.
        listContainer.postDelayed(this::loadStats, 1200L);
    }

    private void loadStats() {
        String json = null;
        try {
            Uri uri = NetspeedProvider.STATS_URI;
            try (android.database.Cursor cursor = getContentResolver().query(uri, null, null, null,
                    null)) {
                if (cursor != null && cursor.moveToFirst()) {
                    int index = cursor.getColumnIndex(NetspeedProvider.COLUMN_JSON);
                    if (index >= 0) {
                        json = cursor.getString(index);
                    }
                }
            }
        } catch (Throwable ignored) {
            // provider not ready
        }
        if (json == null || json.trim().isEmpty()) {
            totalRxView.setText("--");
            totalTxView.setText("--");
            listContainer.removeAllViews();
            listContainer.addView(emptyLine("还没有统计数据，请稍后刷新。"));
            return;
        }
        try {
            JSONObject root = new JSONObject(json);
            totalRxView.setText(formatBytes(root.optLong("totalRx")));
            totalTxView.setText(formatBytes(root.optLong("totalTx")));
            JSONArray apps = root.optJSONArray("apps");
            List<JSONObject> items = new ArrayList<>();
            if (apps != null) {
                for (int i = 0; i < apps.length(); i++) {
                    items.add(apps.getJSONObject(i));
                }
            }
            items.sort(Comparator.comparingLong((JSONObject o) ->
                    o.optLong("rx") + o.optLong("tx")).reversed());
            listContainer.removeAllViews();
            if (items.isEmpty()) {
                listContainer.addView(emptyLine("今天还没有记录到应用流量。"));
                return;
            }
            for (int i = 0; i < Math.min(items.size(), 20); i++) {
                listContainer.addView(appRow(items.get(i)));
            }
        } catch (Throwable t) {
            listContainer.removeAllViews();
            listContainer.addView(emptyLine("统计数据解析失败。"));
        }
    }

    private void loadHistory() {
        long rx = 0L;
        long tx = 0L;
        List<Object[]> rows = new ArrayList<>();
        try (android.database.Cursor cursor = getContentResolver().query(
                NetspeedProvider.HISTORY_URI, null, null, null, null)) {
            if (cursor != null) {
                int dayIndex = cursor.getColumnIndex("day");
                int rxIndex = cursor.getColumnIndex("rx");
                int txIndex = cursor.getColumnIndex("tx");
                int appsIndex = cursor.getColumnIndex("apps");
                while (cursor.moveToNext()) {
                    long dayRx = cursor.getLong(rxIndex);
                    long dayTx = cursor.getLong(txIndex);
                    rows.add(new Object[]{cursor.getString(dayIndex), formatBytes(dayRx),
                            formatBytes(dayTx), cursor.getString(appsIndex)});
                    rx += dayRx;
                    tx += dayTx;
                }
            }
        } catch (Throwable ignored) {
            // provider not ready yet
        }
        if (historyTotalView == null || historyContainer == null) {
            return;
        }
        historyTotalView.setText("总计  ↓" + formatBytes(rx) + "   ↑" + formatBytes(tx)
                + "   共 " + rows.size() + " 天");
        historyContainer.removeAllViews();
        if (rows.isEmpty()) {
            historyContainer.addView(emptyLine("还没有历史记录，联网后会自动累积。"));
            return;
        }
        for (Object[] row : rows) {
            historyContainer.addView(historyDayItem((String) row[0], (String) row[1],
                    (String) row[2], (String) row[3]));
        }
    }

    private View historyDayItem(String day, String rx, String tx, String appsJson) {
        LinearLayout item = new LinearLayout(this);
        item.setOrientation(LinearLayout.VERTICAL);

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(0, dp(8), 0, dp(8));

        TextView dayView = new TextView(this);
        dayView.setText(day + "  ▸");
        dayView.setTextColor(TEXT_PRIMARY);
        dayView.setTextSize(13f);

        TextView nums = new TextView(this);
        nums.setText("↓" + rx + "   ↑" + tx);
        nums.setTextColor(TEXT_MUTED);
        nums.setTextSize(11f);
        nums.setPadding(dp(12), 0, 0, 0);

        header.addView(dayView, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        header.addView(nums);

        LinearLayout detail = new LinearLayout(this);
        detail.setOrientation(LinearLayout.VERTICAL);
        detail.setPadding(dp(10), 0, 0, dp(8));
        detail.setVisibility(View.GONE);

        List<JSONObject> apps = new ArrayList<>();
        try {
            JSONArray array = appsJson == null ? null : new JSONArray(appsJson);
            if (array != null) {
                for (int i = 0; i < array.length(); i++) {
                    apps.add(array.getJSONObject(i));
                }
            }
        } catch (Throwable ignored) {
            // corrupt row, show empty
        }
        apps.sort(Comparator.comparingLong((JSONObject o) ->
                o.optLong("rx") + o.optLong("tx")).reversed());
        if (apps.isEmpty()) {
            detail.addView(emptyLine("当天没有应用记录。"));
        } else {
            for (int i = 0; i < Math.min(apps.size(), 10); i++) {
                detail.addView(appRow(apps.get(i)));
            }
        }

        header.setOnClickListener(v -> {
            boolean open = detail.getVisibility() == View.VISIBLE;
            detail.setVisibility(open ? View.GONE : View.VISIBLE);
            dayView.setText(day + (open ? "  ▸" : "  ▾"));
        });

        item.addView(header);
        item.addView(detail);
        return item;
    }

    private View appRow(JSONObject app) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(0, dp(9), 0, dp(9));

        LinearLayout line = new LinearLayout(this);
        line.setOrientation(LinearLayout.HORIZONTAL);
        line.setGravity(Gravity.CENTER_VERTICAL);

        TextView name = new TextView(this);
        name.setText(app.optString("name", "uid " + app.optInt("uid")));
        name.setTextColor(TEXT_PRIMARY);
        name.setTextSize(13f);
        name.setSingleLine(true);
        name.setEllipsize(android.text.TextUtils.TruncateAt.END);

        TextView nums = new TextView(this);
        nums.setText("↓" + formatBytes(app.optLong("rx")) + "  ↑" + formatBytes(app.optLong("tx")));
        nums.setTextColor(TEXT_MUTED);
        nums.setTextSize(11f);
        nums.setPadding(dp(10), 0, 0, 0);

        line.addView(name, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        line.addView(nums);
        row.addView(line);
        return row;
    }

    private TextView emptyLine(String text) {
        TextView view = new TextView(this);
        view.setText(text);
        view.setTextColor(TEXT_MUTED);
        view.setTextSize(12f);
        view.setPadding(0, dp(10), 0, dp(10));
        return view;
    }

    private static String formatBytes(long bytes) {
        if (bytes < 1024) {
            return bytes + " B";
        }
        double kb = bytes / 1024d;
        if (kb < 1024) {
            return String.format(Locale.US, "%.1f KB", kb);
        }
        double mb = kb / 1024d;
        if (mb < 1024) {
            return String.format(Locale.US, "%.1f MB", mb);
        }
        return String.format(Locale.US, "%.2f GB", mb / 1024d);
    }

    private void putBoolean(String key, boolean value) {
        prefs.edit().putBoolean(key, value).apply();
        notifySettings();
    }

    private void putInt(String key, int value) {
        prefs.edit().putInt(key, value).apply();
        notifySettings();
    }

    private void putFloat(String key, float value) {
        prefs.edit().putFloat(key, value).apply();
        notifySettings();
    }

    private void notifySettings() {
        try {
            getContentResolver().notifyChange(NetspeedProvider.SETTINGS_URI, null);
        } catch (Throwable ignored) {
            // ignore
        }
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
