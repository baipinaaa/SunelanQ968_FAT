.class public Lcom/sprd/validationtools/sqlite/EngSqlite;
.super Ljava/lang/Object;
.source "EngSqlite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;
    }
.end annotation


# static fields
.field public static final ENG_ENGTEST_DB:Ljava/lang/String; = "/mnt/vendor/productinfo/mmitest.db"

.field public static final ENG_ENGTEST_VERSION:I = 0x1

.field public static final ENG_GROUPID_VALUE:Ljava/lang/String; = "groupid"

.field public static final ENG_STRING2INT_DISPLAYNAME:Ljava/lang/String; = "displayname"

.field public static final ENG_STRING2INT_NAME:Ljava/lang/String; = "name"

.field public static final ENG_STRING2INT_TABLE:Ljava/lang/String; = "str2int"

.field public static final ENG_STRING2INT_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "EngSqlite"

.field private static mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    iput-object p1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "databaseHelper":Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;
    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;

    iget-object v2, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 51
    invoke-virtual {v0}, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 55
    :cond_0
    const-string v1, "EngSqlite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EngSqlite mSqLiteDatabase= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v1    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 61
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sprd/validationtools/sqlite/EngSqlite;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/sprd/validationtools/sqlite/EngSqlite;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/sprd/validationtools/sqlite/EngSqlite;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprd/validationtools/sqlite/EngSqlite;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 42
    :cond_0
    sget-object v1, Lcom/sprd/validationtools/sqlite/EngSqlite;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 38
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private insertData(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 172
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngSqlite"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 178
    const-string v1, "insertData, mSqLiteDatabase == null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "str2int"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 185
    .local v3, "returnValue":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returnValue"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 187
    const-string v1, "insert DB error!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "returnValue":J
    goto :goto_0

    .line 195
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 190
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :goto_1
    iget-object v2, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 196
    throw v1
.end method

.method private queryData(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "EngSqlite"

    const-string v1, "queryData, mSqLiteDatabase == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v8

    .line 154
    :cond_0
    :try_start_0
    const-string v1, "str2int"

    const-string v2, "name"

    const-string v3, "value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    const/4 v1, 0x1

    return v1

    .line 163
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    nop

    .line 168
    return v8

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/database/SQLException;
    return v8
.end method


# virtual methods
.method public getTestListItemStatus(Ljava/lang/String;)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    const-string v0, "fianlly"

    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x2

    const-string v10, "EngSqlite"

    if-nez v1, :cond_0

    .line 74
    const-string v0, "getTestListItemStatus, mSqLiteDatabase == null"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v9

    .line 78
    :cond_0
    const-string v2, "value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "str2int"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 81
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-nez v1, :cond_1

    return v9

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 87
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 88
    nop

    .line 103
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x0

    .line 88
    :cond_2
    return v2

    .line 89
    :cond_3
    :try_start_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 90
    nop

    .line 103
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_4

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x0

    .line 90
    :cond_4
    return v3

    .line 92
    :cond_5
    nop

    .line 103
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_6

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x0

    .line 92
    :cond_6
    return v9

    .line 95
    :cond_7
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor.count2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    nop

    .line 103
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_8

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x0

    .line 96
    :cond_8
    return v9

    .line 103
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "ex":Landroid/database/SQLException;
    :try_start_3
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    .end local v2    # "ex":Landroid/database/SQLException;
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_9

    .line 105
    goto :goto_0

    .line 98
    :catch_1
    move-exception v2

    .line 99
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_9

    .line 105
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x0

    .line 109
    :cond_9
    return v9

    .line 103
    :goto_1
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_a

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x0

    .line 108
    :cond_a
    throw v2
.end method

.method public queryData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation

    .line 64
    .local p1, "queryListitem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    move-object v0, p1

    .line 65
    .local v0, "resultListItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/validationtools/modules/TestItem;

    .line 67
    .local v2, "item":Lcom/sprd/validationtools/modules/TestItem;
    invoke-virtual {v2}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getTestListItemStatus(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/modules/TestItem;->setTestResult(I)V

    .line 65
    .end local v2    # "item":Lcom/sprd/validationtools/modules/TestItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public queryFailCount()I
    .locals 9

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "bln":I
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 216
    return v0

    .line 217
    :cond_0
    const-string v2, "name"

    const-string v3, "value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "str2int"

    const-string v4, "value!=?"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 220
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_1
    return v0
.end method

.method public queryNotTestCount()I
    .locals 9

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "bln":I
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 202
    return v0

    .line 203
    :cond_0
    const-string v2, "name"

    const-string v3, "value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "str2int"

    const-string v4, "value=?"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 206
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_1
    return v0
.end method

.method public querySystemFailCount()I
    .locals 5

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList()Ljava/util/ArrayList;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    .line 234
    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getTestListItemStatus(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public updateDB(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 137
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/sprd/validationtools/sqlite/EngSqlite;->updateData(Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v0, "EngSqlite"

    const-string v1, "Error,unqueryData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p1, :cond_1

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/sprd/validationtools/sqlite/EngSqlite;->insertData(Ljava/lang/String;I)V

    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method public updateData(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 114
    const-string v0, "EngSqlite"

    const-string v1, "updateData, mSqLiteDatabase == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PRAGMA synchronous = FULL;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "str2int"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 127
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/sprd/validationtools/sqlite/EngSqlite;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    throw v1
.end method
