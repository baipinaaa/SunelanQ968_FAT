package com.sunelan.netspeed;

import android.content.SharedPreferences;

/**
 * Shared constants for the settings that both the module (inside SystemUI) and the configuration
 * activity (inside the module's own process) need to agree on.
 */
public final class ThemeConfig {

    public static final String PREFS = "netspeed";
    public static final String KEY_ENABLED = "enabled";
    public static final String KEY_UP_COLOR = "color_up";
    public static final String KEY_DOWN_COLOR = "color_down";
    public static final String KEY_ARROW_COLOR = "color_arrow";
    public static final String KEY_TEXT_SIZE = "text_size";

    public static final String[] KEYS = {
            KEY_ENABLED, KEY_UP_COLOR, KEY_DOWN_COLOR, KEY_ARROW_COLOR, KEY_TEXT_SIZE
    };

    public static final int DEFAULT_UP_COLOR = 0xFF35C48B;
    public static final int DEFAULT_DOWN_COLOR = 0xFF4F8CFF;
    public static final int DEFAULT_ARROW_COLOR = 0xE6FFFFFF;
    public static final float DEFAULT_TEXT_SIZE = 9f;
    public static final float MIN_TEXT_SIZE = 7f;
    public static final float MAX_TEXT_SIZE = 14f;

    /** Palette offered in the settings screen (ARGB). */
    public static final int[] PALETTE = {
            0xFFFFFFFF, 0xFFC8CDD4, 0xFF35C48B, 0xFF4F8CFF, 0xFF22C1D9,
            0xFFFF9800, 0xFFFF5252, 0xFFFFD54F, 0xFFB388FF, 0xFFFF80AB
    };

    public static final class Values {
        public final boolean enabled;
        public final int upColor;
        public final int downColor;
        public final int arrowColor;
        public final float textSize;

        Values(boolean enabled, int upColor, int downColor, int arrowColor, float textSize) {
            this.enabled = enabled;
            this.upColor = upColor;
            this.downColor = downColor;
            this.arrowColor = arrowColor;
            this.textSize = textSize;
        }

        public static Values defaults() {
            return new Values(true, DEFAULT_UP_COLOR, DEFAULT_DOWN_COLOR, DEFAULT_ARROW_COLOR,
                    DEFAULT_TEXT_SIZE);
        }
    }

    private ThemeConfig() {
    }

    static Values read(SharedPreferences prefs) {
        if (prefs == null) {
            return Values.defaults();
        }
        return new Values(
                prefs.getBoolean(KEY_ENABLED, true),
                prefs.getInt(KEY_UP_COLOR, DEFAULT_UP_COLOR),
                prefs.getInt(KEY_DOWN_COLOR, DEFAULT_DOWN_COLOR),
                prefs.getInt(KEY_ARROW_COLOR, DEFAULT_ARROW_COLOR),
                prefs.getFloat(KEY_TEXT_SIZE, DEFAULT_TEXT_SIZE));
    }

    static String encode(SharedPreferences prefs, String key) {
        if (prefs == null) {
            return "";
        }
        switch (key) {
            case KEY_ENABLED:
                return prefs.getBoolean(KEY_ENABLED, true) ? "1" : "0";
            case KEY_UP_COLOR:
                return String.valueOf(prefs.getInt(KEY_UP_COLOR, DEFAULT_UP_COLOR));
            case KEY_DOWN_COLOR:
                return String.valueOf(prefs.getInt(KEY_DOWN_COLOR, DEFAULT_DOWN_COLOR));
            case KEY_ARROW_COLOR:
                return String.valueOf(prefs.getInt(KEY_ARROW_COLOR, DEFAULT_ARROW_COLOR));
            case KEY_TEXT_SIZE:
                return String.valueOf(prefs.getFloat(KEY_TEXT_SIZE, DEFAULT_TEXT_SIZE));
            default:
                return "";
        }
    }

    static Values decode(java.util.Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return Values.defaults();
        }
        boolean enabled = !"0".equals(map.get(KEY_ENABLED));
        int up = parseInt(map.get(KEY_UP_COLOR), DEFAULT_UP_COLOR);
        int down = parseInt(map.get(KEY_DOWN_COLOR), DEFAULT_DOWN_COLOR);
        int arrow = parseInt(map.get(KEY_ARROW_COLOR), DEFAULT_ARROW_COLOR);
        float size = parseFloat(map.get(KEY_TEXT_SIZE), DEFAULT_TEXT_SIZE);
        if (size < MIN_TEXT_SIZE) {
            size = MIN_TEXT_SIZE;
        } else if (size > MAX_TEXT_SIZE) {
            size = MAX_TEXT_SIZE;
        }
        return new Values(enabled, up, down, arrow, size);
    }

    private static int parseInt(String raw, int fallback) {
        try {
            return Integer.parseInt(raw);
        } catch (Throwable t) {
            return fallback;
        }
    }

    private static float parseFloat(String raw, float fallback) {
        try {
            return Float.parseFloat(raw);
        } catch (Throwable t) {
            return fallback;
        }
    }
}
