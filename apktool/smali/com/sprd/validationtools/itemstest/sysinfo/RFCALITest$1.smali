.class Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;
.super Ljava/lang/Object;
.source "RFCALITest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    .line 51
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 54
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->getModemType()I

    move-result v0

    .line 55
    .local v0, "modemType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial modemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RFCALITest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x3

    const-string v2, "AT+SGMR=0,0,3,1,1"

    const-string v3, "atchannel0"

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 68
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->getRadioCapbility()Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    move-result-object v4

    sget-object v5, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->FDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    if-eq v4, v5, :cond_1

    .line 69
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->getRadioCapbility()Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    move-result-object v4

    sget-object v5, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    if-eq v4, v5, :cond_1

    .line 70
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->getRadioCapbility()Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    move-result-object v4

    sget-object v5, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->LWLW:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    if-eq v4, v5, :cond_1

    .line 72
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->IsSupportWCDMA()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    if-ne v0, v1, :cond_2

    .line 77
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->getRadioCapbility()Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    move-result-object v4

    sget-object v5, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->WG:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    if-ne v4, v5, :cond_2

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    .line 82
    :cond_2
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->IsSupportLTE()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    :cond_3
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->getRadioCapbility()Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    move-result-object v1

    sget-object v2, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->WG:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    if-eq v1, v2, :cond_5

    .line 87
    const-string v1, "AT+SGMR=1,0,3,3,1"

    invoke-static {v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendAtCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "temp":Ljava/lang/String;
    sget-object v2, Lcom/sprd/validationtools/utils/IATUtils;->AT_FAIL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "AT+SGMR=1,0,3,3"

    invoke-static {v5, v3}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    .line 95
    .end local v1    # "temp":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->IsSupportCDMA()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "AT+SGMR=0,0,3,2"

    invoke-static {v4, v3}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    .line 99
    :cond_6
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->IsSupportNR()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "AT+SGMR=1,0,3,4"

    invoke-static {v4, v3}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fputstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    .line 103
    :cond_7
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetmUiHandler(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1$1;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1$1;-><init>(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
