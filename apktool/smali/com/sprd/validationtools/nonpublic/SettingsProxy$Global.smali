.class public final Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;
.super Ljava/lang/Object;
.source "SettingsProxy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/nonpublic/SettingsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;",
        "",
        "()V",
        "BLE_SCAN_ALWAYS_AVAILABLE",
        "",
        "MULTI_SIM_DATA_CALL_SUBSCRIPTION",
        "PREFERRED_NETWORK_MODE",
        "getFieldValue",
        "fieldName",
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
.field public static final BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String;

.field public static final INSTANCE:Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;

.field public static final MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String;

.field public static final PREFERRED_NETWORK_MODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;

    invoke-direct {v0}, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->INSTANCE:Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;

    .line 13
    const-string v1, "PREFERRED_NETWORK_MODE"

    invoke-direct {v0, v1}, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->PREFERRED_NETWORK_MODE:Ljava/lang/String;

    .line 16
    const-string v1, "MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-direct {v0, v1}, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String;

    .line 19
    const-string v1, "BLE_SCAN_ALWAYS_AVAILABLE"

    invoke-direct {v0, v1}, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/nonpublic/SettingsProxy$Global;->BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    const-class v0, Landroid/provider/Settings;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
