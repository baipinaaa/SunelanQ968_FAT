.class public interface abstract Lcom/sprd/validationtools/background/BackgroundTest;
.super Ljava/lang/Object;
.source "BackgroundTest.java"


# static fields
.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_INVALID:I = -0x1

.field public static final RESULT_PASS:I = 0x1


# virtual methods
.method public abstract getResult()I
.end method

.method public abstract getResultStr()Ljava/lang/String;
.end method

.method public abstract getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;
.end method

.method public abstract getTestItemIdx()I
.end method

.method public abstract startTest()V
.end method

.method public abstract stopTest()V
.end method
