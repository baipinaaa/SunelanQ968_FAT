.class Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;
.super Landroid/os/AsyncTask;
.source "TestInfoMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 259
    iput-object p1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 264
    new-instance v0, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;

    invoke-direct {v0}, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;-><init>()V

    .line 265
    .local v0, "mTestInfoQRCode":Lcom/sprd/validationtools/testinfo/TestInfoQRCode;
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 266
    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->getTestInfoQRCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "qrtext":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-virtual {v2}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 268
    const v3, 0x7f030008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 269
    .local v2, "width":I
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 270
    invoke-virtual {v3}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 271
    const v4, 0x7f030007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 272
    .local v3, "height":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestInfoMainActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v1, v2, v3}, Lcom/sprd/validationtools/utils/ZXingUtils;->createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 274
    .local v4, "bm":Landroid/graphics/Bitmap;
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 280
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmQRCodeImageView(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmQRCodeImageView(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
