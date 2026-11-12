.class public final Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;
.super Ljava/lang/Object;
.source "TelephonyManagerExProxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;",
        "",
        "()V",
        "CLASS_NAME",
        "",
        "TAG",
        "tmExClass",
        "Ljava/lang/Class;",
        "tmExObject",
        "getCellLocationForPhone",
        "Landroid/telephony/CellLocation;",
        "phoneId",
        "",
        "init",
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
.field private static final CLASS_NAME:Ljava/lang/String; = "android.telephony.TelephonyManagerEx"

.field public static final INSTANCE:Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;

.field private static final TAG:Ljava/lang/String; = "TELEPHONYMANAGEREXPROXY"

.field private static tmExClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static tmExObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;

    invoke-direct {v0}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;->INSTANCE:Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;

    .line 19
    nop

    .line 20
    invoke-virtual {v0}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;->init()V

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCellLocationForPhone(I)Landroid/telephony/CellLocation;
    .locals 5
    .param p0, "phoneId"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 37
    sget-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;->tmExClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "tmExClass"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getCellLocationForPhone"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    sget-object v2, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;->tmExObject:Ljava/lang/Object;

    if-nez v2, :cond_1

    const-string v2, "tmExObject"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.telephony.CellLocation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final init()V
    .locals 4

    .line 25
    nop

    .line 26
    :try_start_0
    const-string v0, "android.telephony.TelephonyManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forName(CLASS_NAME)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;->tmExClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-nez v0, :cond_0

    const-string v0, "tmExClass"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/sprd/validationtools/CommonKt;->getAppCtx()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tmExClass.getMethod(\"fro\u2026lass.java).invoke(appCtx)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;->tmExObject:Ljava/lang/Object;

    .line 33
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "TELEPHONYMANAGEREXPROXY"

    const-string v2, "no such class, android.telephony.TelephonyManagerEx"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    throw v0
.end method
