.class Lcom/sprd/validationtools/itemstest/TestResultActivity$2;
.super Ljava/lang/Object;
.source "TestResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/TestResultActivity;->setSuccess(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/TestResultActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/TestResultActivity;

    .line 155
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    iput-boolean p2, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get8Bit(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .line 190
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 193
    :cond_0
    return-object p1
.end method

.method private getBitStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "result":Ljava/lang/String;
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "ind":I
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 157
    const-string v0, "AT+SGMR=0,0,4"

    const-string v1, "atchannel0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSuccess get result str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TestResultActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v2, Lcom/sprd/validationtools/utils/IATUtils;->AT_OK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "paser":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "paser1":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->getBitStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->-$$Nest$fputmBit(Lcom/sprd/validationtools/itemstest/TestResultActivity;Ljava/lang/String;)V

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->-$$Nest$fgetmBit(Lcom/sprd/validationtools/itemstest/TestResultActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v5, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->val$flag:Z

    const/16 v6, 0x10

    if-eqz v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->-$$Nest$fgetmBit(Lcom/sprd/validationtools/itemstest/TestResultActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 168
    const-string v5, "08000000"

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    or-long/2addr v5, v7

    .local v5, "cc":J
    goto :goto_0

    .line 170
    .end local v5    # "cc":J
    :cond_0
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->-$$Nest$fgetmBit(Lcom/sprd/validationtools/itemstest/TestResultActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 171
    const-string v5, "f7ffffff"

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    and-long/2addr v5, v7

    .line 173
    .restart local v5    # "cc":J
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AT+SGMR=0,1,4,\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 174
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;->get8Bit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-static {v7, v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSuccess set result cc = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", str = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v2    # "paser":[Ljava/lang/String;
    .end local v4    # "paser1":[Ljava/lang/String;
    .end local v5    # "cc":J
    :cond_1
    return-void
.end method
