package com.sunelan.netspeed;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Permanent per-day traffic history. The hook only knows about "today", so every sample is
 * upserted under the day it belongs to; rows are never deleted, which makes the sum of the
 * table the lifetime total since install.
 */
final class StatsDb extends SQLiteOpenHelper {

    static final String NAME = "netspeed.db";
    private static final int VERSION = 1;

    StatsDb(Context context) {
        super(context, NAME, null, VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE daily ("
                + "day TEXT PRIMARY KEY NOT NULL,"
                + "rx INTEGER NOT NULL DEFAULT 0,"
                + "tx INTEGER NOT NULL DEFAULT 0,"
                + "apps TEXT,"
                + "updated INTEGER NOT NULL DEFAULT 0)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // Training data must survive upgrades; the schema is append-only.
    }

    void record(String day, long rx, long tx, String appsJson) {
        ContentValues values = new ContentValues();
        values.put("day", day);
        values.put("rx", rx);
        values.put("tx", tx);
        values.put("apps", appsJson);
        values.put("updated", System.currentTimeMillis());
        getWritableDatabase().insertWithOnConflict("daily", null, values,
                SQLiteDatabase.CONFLICT_REPLACE);
    }

    Cursor days() {
        return getReadableDatabase().query("daily",
                new String[]{"day", "rx", "tx", "apps", "updated"},
                null, null, null, null, "day DESC");
    }

    long[] totals() {
        try (Cursor cursor = getReadableDatabase().rawQuery(
                "SELECT SUM(rx), SUM(tx) FROM daily", null)) {
            if (cursor != null && cursor.moveToFirst()) {
                return new long[]{cursor.getLong(0), cursor.getLong(1)};
            }
        }
        return new long[]{0L, 0L};
    }
}
