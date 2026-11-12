.class public abstract Lcom/sprd/validationtools/modules/TestItemList;
.super Ljava/lang/Object;
.source "TestItemList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestItemList"


# instance fields
.field private mAutoTestItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTestItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/modules/TestItemList;->mAutoTestItemList:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Lcom/sprd/validationtools/modules/TestItemList;->getfilterClassName()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sprd/validationtools/modules/TestItemList;->addAndFilterTestItemList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lcom/sprd/validationtools/modules/TestItemList;->getfilterClassName()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sprd/validationtools/modules/TestItemList;->addAndFilterAutoTestItemList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private addAndFilterAutoTestItemList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterClassName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 105
    return-object v4

    .line 107
    :cond_0
    array-length v5, v3

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 108
    .local v7, "testItemClassName":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v0

    .line 110
    .local v8, "comName":Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 112
    .local v9, "actInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v10, 0x80

    invoke-virtual {v0, v8, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 116
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 118
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-nez v9, :cond_1

    return-object v4

    .line 119
    :cond_1
    iget v0, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "testName_":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 121
    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_2
    iget v15, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 124
    .local v15, "labelRes":I
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 125
    .local v16, "testPackageName_":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 126
    .local v17, "testClassName_":Ljava/lang/String;
    const/16 v18, 0x2

    .line 127
    .local v18, "testResult_":I
    new-instance v19, Lcom/sprd/validationtools/modules/TestItem;

    move-object/from16 v10, v19

    move-object v11, v0

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move/from16 v14, v18

    move/from16 v20, v15

    .end local v15    # "labelRes":I
    .local v20, "labelRes":I
    invoke-direct/range {v10 .. v15}, Lcom/sprd/validationtools/modules/TestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 129
    .local v10, "iTestItem":Lcom/sprd/validationtools/modules/TestItem;
    iget-object v11, v1, Lcom/sprd/validationtools/modules/TestItemList;->mAutoTestItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v0    # "testName_":Ljava/lang/String;
    .end local v7    # "testItemClassName":Ljava/lang/String;
    .end local v8    # "comName":Landroid/content/ComponentName;
    .end local v9    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "iTestItem":Lcom/sprd/validationtools/modules/TestItem;
    .end local v16    # "testPackageName_":Ljava/lang/String;
    .end local v17    # "testClassName_":Ljava/lang/String;
    .end local v18    # "testResult_":I
    .end local v20    # "labelRes":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, v1, Lcom/sprd/validationtools/modules/TestItemList;->mAutoTestItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAndFilterTestItemList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterClassName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation

    .line 62
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 63
    return-object v4

    .line 65
    :cond_0
    array-length v5, v3

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    .line 66
    .local v7, "testItemClassName":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v0

    .line 68
    .local v8, "comName":Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 70
    .local v9, "actInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v10, 0x80

    invoke-virtual {v0, v8, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 76
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-nez v9, :cond_1

    return-object v4

    .line 77
    :cond_1
    iget v0, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "testName_":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 79
    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2
    iget v15, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 82
    .local v15, "labelRes":I
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 83
    .local v16, "testPackageName_":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 84
    .local v14, "testClassName_":Ljava/lang/String;
    const/16 v17, 0x2

    .line 85
    .local v17, "testResult_":I
    new-instance v18, Lcom/sprd/validationtools/modules/TestItem;

    move-object/from16 v10, v18

    move-object v11, v0

    move-object/from16 v12, v16

    move-object v13, v14

    move-object v4, v14

    .end local v14    # "testClassName_":Ljava/lang/String;
    .local v4, "testClassName_":Ljava/lang/String;
    move/from16 v14, v17

    move/from16 v19, v15

    .end local v15    # "labelRes":I
    .local v19, "labelRes":I
    invoke-direct/range {v10 .. v15}, Lcom/sprd/validationtools/modules/TestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 87
    .local v10, "iTestItem":Lcom/sprd/validationtools/modules/TestItem;
    invoke-static {v2, v4}, Lcom/sprd/validationtools/Const;->getSupportInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 88
    .local v11, "isSupport":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterTestItemList isSupport="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",testClassName_="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "TestItemList"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v11, :cond_3

    .line 90
    iget-object v12, v1, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v0    # "testName_":Ljava/lang/String;
    .end local v4    # "testClassName_":Ljava/lang/String;
    .end local v7    # "testItemClassName":Ljava/lang/String;
    .end local v8    # "comName":Landroid/content/ComponentName;
    .end local v9    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "iTestItem":Lcom/sprd/validationtools/modules/TestItem;
    .end local v11    # "isSupport":Z
    .end local v16    # "testPackageName_":Ljava/lang/String;
    .end local v17    # "testResult_":I
    .end local v19    # "labelRes":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, v1, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getAutoTestItemList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItemList;->mAutoTestItemList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/modules/TestItemList;->mAutoTestItemList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestItemByClassName(Ljava/lang/String;)Lcom/sprd/validationtools/modules/TestItem;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/validationtools/modules/TestItem;

    .line 50
    .local v2, "testItem":Lcom/sprd/validationtools/modules/TestItem;
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const-string v1, "TestItemList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTestItemByClassName className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-exit v0

    return-object v2

    .line 54
    .end local v2    # "testItem":Lcom/sprd/validationtools/modules/TestItem;
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    const-string v1, "TestItemList"

    const-string v2, "getTestItemByClassName NOT FOUND!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestItemList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestItemList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    invoke-virtual {p0}, Lcom/sprd/validationtools/modules/TestItemList;->getfilterClassName()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sprd/validationtools/modules/TestItemList;->addAndFilterTestItemList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    iget-object v1, p0, Lcom/sprd/validationtools/modules/TestItemList;->mTestItemList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract getfilterClassName()[Ljava/lang/String;
.end method
