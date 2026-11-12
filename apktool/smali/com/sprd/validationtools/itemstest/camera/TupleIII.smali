.class public Lcom/sprd/validationtools/itemstest/camera/TupleIII;
.super Lcom/sprd/validationtools/itemstest/camera/Tuple;
.source "TupleIII.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sprd/validationtools/itemstest/camera/Tuple<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field public final third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/sprd/validationtools/itemstest/camera/TupleIII;, "Lcom/sprd/validationtools/itemstest/camera/TupleIII<TA;TB;TC;>;"
    .local p1, "first":Ljava/lang/Object;, "TA;"
    .local p2, "second":Ljava/lang/Object;, "TB;"
    .local p3, "third":Ljava/lang/Object;, "TC;"
    invoke-direct {p0, p1, p2}, Lcom/sprd/validationtools/itemstest/camera/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    iput-object p3, p0, Lcom/sprd/validationtools/itemstest/camera/TupleIII;->third:Ljava/lang/Object;

    .line 14
    return-void
.end method
