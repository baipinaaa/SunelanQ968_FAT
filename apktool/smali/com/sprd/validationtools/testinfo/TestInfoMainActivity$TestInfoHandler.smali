.class Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;
.super Landroid/os/Handler;
.source "TestInfoMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestInfoHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 123
    iput-object p1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "result":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\n"

    const-string v3, ":"

    const-string v4, "TestInfoMainActivity"

    const-string v5, ""

    const-string v6, "phone"

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 176
    :pswitch_1
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-virtual {v1, v6}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 177
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 179
    .local v6, "phoneCnt":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET_MEID===phoneCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 182
    .local v4, "meidBuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 183
    const-string v8, "meid"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v8, v5, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-static {v1, v5}, Lcom/sprd/validationtools/Safe;->meid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_0
    add-int/lit8 v8, v6, -0x1

    if-ge v5, v8, :cond_1

    .line 190
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v5    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v2, v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v3, v3, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget v5, p1, Landroid/os/Message;->what:I

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {v3, v5, v7, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "meidBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "phoneCnt":I
    :cond_3
    goto/16 :goto_4

    .line 207
    :pswitch_2
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 208
    invoke-static {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v1

    .line 209
    .local v1, "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryFailCount()I

    move-result v2

    .line 210
    .local v2, "failCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v4}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmIsTested(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 212
    if-lez v2, :cond_6

    .line 213
    const-string v0, ""

    .line 214
    iget-object v4, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 215
    invoke-static {v4}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList()Ljava/util/ArrayList;

    move-result-object v4

    .line 217
    .local v4, "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    const/4 v5, 0x0

    .line 218
    .local v5, "index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 219
    nop

    .line 220
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprd/validationtools/modules/TestItem;

    .line 221
    invoke-virtual {v8}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-virtual {v1, v8}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getTestListItemStatus(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 222
    add-int/lit8 v5, v6, 0x1

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 224
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v9}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  Failed\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 228
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .end local v4    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    .end local v5    # "index":I
    goto :goto_2

    .line 230
    :cond_6
    const-string v0, "All Pass"

    goto :goto_2

    .line 233
    :cond_7
    const-string v0, "Not Test"

    .line 235
    :goto_2
    iget-object v4, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v4, v4, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v5, v5, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6, v7, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 200
    .end local v1    # "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    .end local v2    # "failCount":I
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    :pswitch_3
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v1

    .line 201
    .local v1, "parse":Lcom/sprd/validationtools/PhaseCheckParse;
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v2, v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v3, v3, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 202
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse;->getPhaseCheck()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    .end local v1    # "parse":Lcom/sprd/validationtools/PhaseCheckParse;
    goto/16 :goto_4

    .line 154
    :pswitch_4
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-virtual {v1, v6}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 155
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    .line 156
    .local v8, "phoneCnt":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET_IMEI===phoneCnt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, "imeiBuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v8, :cond_a

    .line 160
    const-string v9, "imei"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v9, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-virtual {v9, v6}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 164
    invoke-static {v1, v5}, Lcom/sprd/validationtools/Safe;->deviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_8
    add-int/lit8 v9, v8, -0x1

    if-ge v5, v9, :cond_9

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 170
    .end local v5    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v2, v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v3, v3, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget v5, p1, Landroid/os/Message;->what:I

    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {v3, v5, v7, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "imeiBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "phoneCnt":I
    goto :goto_4

    .line 142
    :pswitch_5
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v1

    .line 147
    .local v1, "parse":Lcom/sprd/validationtools/PhaseCheckParse;
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v2, v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    iget-object v3, v3, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 148
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse;->getSn()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    .end local v1    # "parse":Lcom/sprd/validationtools/PhaseCheckParse;
    nop

    .line 240
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
