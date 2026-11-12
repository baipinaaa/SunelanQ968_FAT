.class public final Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;
.super Ljava/lang/Object;
.source "StorageManagerProxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;",
        "",
        "()V",
        "storageManagerObject",
        "Landroid/os/storage/StorageManager;",
        "getPrimaryStorageSize",
        "",
        "vendor__sprd__platform__packages__apps__ValidationTools__android_common__ValidationTools"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;

.field private static storageManagerObject:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;

    invoke-direct {v0}, Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;->INSTANCE:Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;

    .line 14
    invoke-static {}, Lcom/sprd/validationtools/CommonKt;->getAppCtx()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;->storageManagerObject:Landroid/os/storage/StorageManager;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.os.storage.StorageManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPrimaryStorageSize()J
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Landroid/os/storage/StorageManager;

    .line 19
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getPrimaryStorageSize"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 20
    sget-object v2, Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;->storageManagerObject:Landroid/os/storage/StorageManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
