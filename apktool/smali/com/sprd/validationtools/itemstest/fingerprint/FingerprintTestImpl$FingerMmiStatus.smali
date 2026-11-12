.class final enum Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;
.super Ljava/lang/Enum;
.source "FingerprintTestImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FingerMmiStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

.field public static final enum EXIT:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

.field public static final enum IDLE:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

.field public static final enum RUNNING:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->IDLE:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    new-instance v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->RUNNING:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    new-instance v3, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    const-string v5, "EXIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->EXIT:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->$VALUES:[Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    return-object v0
.end method

.method public static values()[Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;
    .locals 1

    .line 19
    sget-object v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->$VALUES:[Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    invoke-virtual {v0}, [Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    return-object v0
.end method
