.class public final enum Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;
.super Ljava/lang/Enum;
.source "TelephonyManagerSprd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/TelephonyManagerSprd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioCapbility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum FDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum LW:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum LWLW:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum NONE:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum TDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum TDD_SVLTE:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

.field public static final enum WG:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 76
    new-instance v0, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->NONE:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v3, "TDD_SVLTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->TDD_SVLTE:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v3, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v5, "FDD_CSFB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->FDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v5, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v7, "TDD_CSFB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->TDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v7, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v9, "CSFB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v9, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v11, "LW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->LW:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v11, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v13, "WG"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->WG:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    new-instance v13, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    const-string v15, "LWLW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->LWLW:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    .line 75
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->$VALUES:[Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v0
.end method

.method public static values()[Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;
    .locals 1

    .line 75
    sget-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->$VALUES:[Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    invoke-virtual {v0}, [Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v0
.end method
