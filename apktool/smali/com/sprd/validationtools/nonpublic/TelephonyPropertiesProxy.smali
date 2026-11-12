.class public final Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;
.super Ljava/lang/Object;
.source "TelephonyPropertiesProxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;",
        "",
        "()V",
        "PROPERTY_BASEBAND_VERSION",
        "",
        "PROPERTY_ICC_OPERATOR_NUMERIC",
        "TP_CLASS_NAME",
        "tpClass",
        "Ljava/lang/Class;",
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
.field public static final INSTANCE:Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String;

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;

.field private static final TP_CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.TelephonyProperties"

.field private static tpClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;

    invoke-direct {v0}, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->INSTANCE:Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;

    .line 14
    nop

    .line 15
    invoke-virtual {v0}, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->init()V

    .line 16
    nop

    .line 24
    sget-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->tpClass:Ljava/lang/Class;

    const-string v1, "tpClass"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const-string v3, "PROPERTY_BASEBAND_VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->PROPERTY_BASEBAND_VERSION:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->tpClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const-string v1, "PROPERTY_ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 2

    .line 20
    const-string v0, "com.android.internal.telephony.TelephonyProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forName(TP_CLASS_NAME)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/TelephonyPropertiesProxy;->tpClass:Ljava/lang/Class;

    .line 21
    return-void
.end method
