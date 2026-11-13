.class public Lcom/sprd/validationtools/ItemListActivity;
.super Landroid/app/Activity;
.source "ItemListActivity.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;

.field private items:[Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    const/16 v0, 0x16
    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x0
    const-string v2, "版本信息"
    aput-object v2, v0, v1

    const/16 v1, 0x1
    const-string v2, "屏幕颜色"
    aput-object v2, v0, v1

    const/16 v1, 0x2
    const-string v2, "单点触控"
    aput-object v2, v0, v1

    const/16 v1, 0x3
    const-string v2, "多点触控"
    aput-object v2, v0, v1

    const/16 v1, 0x4
    const-string v2, "振动"
    aput-object v2, v0, v1

    const/16 v1, 0x5
    const-string v2, "听筒"
    aput-object v2, v0, v1

    const/16 v1, 0x6
    const-string v2, "语音回环"
    aput-object v2, v0, v1

    const/16 v1, 0x7
    const-string v2, "电话"
    aput-object v2, v0, v1

    const/16 v1, 0x8
    const-string v2, "前相机"
    aput-object v2, v0, v1

    const/16 v1, 0x9
    const-string v2, "后相机"
    aput-object v2, v0, v1

    const/16 v1, 0xa
    const-string v2, "按键"
    aput-object v2, v0, v1

    const/16 v1, 0xb
    const-string v2, "充电器"
    aput-object v2, v0, v1

    const/16 v1, 0xc
    const-string v2, "FM"
    aput-object v2, v0, v1

    const/16 v1, 0xd
    const-string v2, "SoundTrigger"
    aput-object v2, v0, v1

    const/16 v1, 0xe
    const-string v2, "蓝牙"
    aput-object v2, v0, v1

    const/16 v1, 0xf
    const-string v2, "WIFI"
    aput-object v2, v0, v1

    const/16 v1, 0x10
    const-string v2, "GPS"
    aput-object v2, v0, v1

    const/16 v1, 0x11
    const-string v2, "SD卡"
    aput-object v2, v0, v1

    const/16 v1, 0x12
    const-string v2, "SIM卡"
    aput-object v2, v0, v1

    const/16 v1, 0x13
    const-string v2, "手电筒"
    aput-object v2, v0, v1

    const/16 v1, 0x14
    const-string v2, "按键灯"
    aput-object v2, v0, v1

    const/16 v1, 0x15
    const-string v2, "USB"
    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sprd/validationtools/ItemListActivity;->items:[Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sprd/validationtools/FatAdapter;

    invoke-direct {v2, p0, v0}, Lcom/sprd/validationtools/FatAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/sprd/validationtools/FatTestActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprd/validationtools/ItemListActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p3

    const-string v2, "test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
