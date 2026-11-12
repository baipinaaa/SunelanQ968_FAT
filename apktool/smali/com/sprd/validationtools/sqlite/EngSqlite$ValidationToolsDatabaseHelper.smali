.class Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EngSqlite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/sqlite/EngSqlite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationToolsDatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    const-string v0, "/mnt/vendor/productinfo/mmitest.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 243
    iput-object v1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 247
    iput-object p1, p0, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 252
    const-string v0, "DROP TABLE IF EXISTS str2int;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v0, "CREATE TABLE str2int (_id INTEGER PRIMARY KEY AUTOINCREMENT,groupid INTEGER NOT NULL DEFAULT 0,name TEXT,displayname TEXT,value INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, "supportArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 265
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    .line 267
    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    .line 269
    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v3

    .line 268
    const-string v4, "displayname"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v3, 0x0

    const-string v4, "str2int"

    invoke-virtual {p1, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 272
    .local v3, "returnValue":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 273
    const-string v5, "EngSqlite"

    const-string v6, "insert DB error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "returnValue":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 281
    if-le p3, p2, :cond_0

    .line 282
    const-string v0, "DROP TABLE IF EXISTS str2int;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/sqlite/EngSqlite$ValidationToolsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    :cond_0
    return-void
.end method
