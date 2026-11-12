.class public final Lcom/sprd/validationtools/CommonKt;
.super Ljava/lang/Object;
.source "Common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001e\u0010\u0000\u001a\u00020\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "appCtx",
        "Landroid/content/Context;",
        "getAppCtx",
        "()Landroid/content/Context;",
        "setAppCtx",
        "(Landroid/content/Context;)V",
        "vendor__sprd__platform__packages__apps__ValidationTools__android_common__ValidationTools"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static appCtx:Landroid/content/Context;


# direct methods
.method public static final getAppCtx()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lcom/sprd/validationtools/CommonKt;->appCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appCtx"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final setAppCtx(Landroid/content/Context;)V
    .locals 1
    .param p0, "<set-?>"    # Landroid/content/Context;

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sput-object p0, Lcom/sprd/validationtools/CommonKt;->appCtx:Landroid/content/Context;

    return-void
.end method
