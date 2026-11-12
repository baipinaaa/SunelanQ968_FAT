.class Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;
.super Landroid/os/AsyncTask;
.source "ColorTemperatureTestActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorTemperatureAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    .line 281
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .param p1, "params"    # [Ljava/lang/Void;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$mreadColorTemperature(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V

    .line 291
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$mloadGoldenDataFromProdNV(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V

    .line 292
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 293
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fputg_mtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V

    .line 295
    :cond_0
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 296
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fputg_mtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V

    .line 298
    :cond_1
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 299
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fputg_mtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V

    .line 301
    :cond_2
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 302
    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fputg_mtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V

    .line 304
    :cond_3
    iget-object v3, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 306
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 307
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 308
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 309
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 312
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 313
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 314
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 315
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 304
    invoke-static/range {v3 .. v11}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$mshowColorTemperatureInfo(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 318
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 319
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 320
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetg_mtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 321
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 324
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 325
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 326
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I

    move-result v1

    .line 327
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 316
    invoke-static/range {v12 .. v20}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$msaveColorTemperatureInfo(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v1, 0x0

    return-object v1
.end method
