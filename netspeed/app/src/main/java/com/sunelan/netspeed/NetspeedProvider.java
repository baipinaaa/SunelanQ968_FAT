package com.sunelan.netspeed;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;

/**
 * Tiny bridge between the configuration activity (this process) and the Xposed hook that runs
 * inside {@code com.android.systemui}:
 * <ul>
 *     <li>{@code settings} - key/value rows, written by the activity, read by the hook.</li>
 *     <li>{@code stats} - one JSON column, written by the hook, read by the activity.</li>
 * </ul>
 * The provider is exported without a permission on purpose: SystemUI cannot declare our custom
 * permission, and the payload is limited to the network speed look and figures.
 */
public class NetspeedProvider extends ContentProvider {

    public static final String AUTHORITY = "com.sunelan.netspeed.stats";
    public static final Uri SETTINGS_URI = Uri.parse("content://" + AUTHORITY + "/settings");
    public static final Uri STATS_URI = Uri.parse("content://" + AUTHORITY + "/stats");

    public static final String COLUMN_KEY = "key";
    public static final String COLUMN_VALUE = "value";
    public static final String COLUMN_JSON = "json";
    public static final String STATS_JSON_KEY = "stats_json";

    private static final int MATCH_SETTINGS = 1;
    private static final int MATCH_STATS = 2;

    private static final UriMatcher MATCHER = new UriMatcher(UriMatcher.NO_MATCH);

    static {
        MATCHER.addURI(AUTHORITY, "settings", MATCH_SETTINGS);
        MATCHER.addURI(AUTHORITY, "stats", MATCH_STATS);
    }

    private SharedPreferences prefs;

    @Override
    public boolean onCreate() {
        prefs = getContext().getSharedPreferences(ThemeConfig.PREFS, Context.MODE_PRIVATE);
        return true;
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs,
                        String sortOrder) {
        switch (MATCHER.match(uri)) {
            case MATCH_SETTINGS: {
                MatrixCursor cursor = new MatrixCursor(new String[]{COLUMN_KEY, COLUMN_VALUE});
                for (String key : ThemeConfig.KEYS) {
                    cursor.addRow(new Object[]{key, ThemeConfig.encode(prefs, key)});
                }
                return cursor;
            }
            case MATCH_STATS: {
                MatrixCursor cursor = new MatrixCursor(new String[]{COLUMN_JSON});
                cursor.addRow(new Object[]{prefs.getString(STATS_JSON_KEY, "")});
                return cursor;
            }
            default:
                return null;
        }
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        if (MATCHER.match(uri) == MATCH_STATS && values != null) {
            String json = values.getAsString(COLUMN_JSON);
            if (json != null) {
                prefs.edit().putString(STATS_JSON_KEY, json).apply();
                notifyChanged(uri);
                return uri;
            }
        }
        return null;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        if (MATCHER.match(uri) == MATCH_SETTINGS && values != null) {
            SharedPreferences.Editor editor = prefs.edit();
            String key = values.getAsString(COLUMN_KEY);
            String value = values.getAsString(COLUMN_VALUE);
            if (key != null && value != null) {
                applySetting(editor, key, value);
                editor.apply();
                notifyChanged(uri);
                return 1;
            }
        }
        return 0;
    }

    private static void applySetting(SharedPreferences.Editor editor, String key, String value) {
        switch (key) {
            case ThemeConfig.KEY_ENABLED:
                editor.putBoolean(key, !"0".equals(value));
                break;
            case ThemeConfig.KEY_UP_COLOR:
            case ThemeConfig.KEY_DOWN_COLOR:
            case ThemeConfig.KEY_ARROW_COLOR:
                try {
                    editor.putInt(key, Integer.parseInt(value));
                } catch (Throwable ignored) {
                    // keep old value
                }
                break;
            case ThemeConfig.KEY_TEXT_SIZE:
                try {
                    editor.putFloat(key, Float.parseFloat(value));
                } catch (Throwable ignored) {
                    // keep old value
                }
                break;
            default:
                break;
        }
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public String getType(Uri uri) {
        switch (MATCHER.match(uri)) {
            case MATCH_SETTINGS:
                return "vnd.android.cursor.dir/vnd.com.sunelan.netspeed.settings";
            case MATCH_STATS:
                return "vnd.android.cursor.item/vnd.com.sunelan.netspeed.stats";
            default:
                return null;
        }
    }

    private void notifyChanged(Uri uri) {
        Context context = getContext();
        if (context != null) {
            context.getContentResolver().notifyChange(uri, null);
        }
    }
}
