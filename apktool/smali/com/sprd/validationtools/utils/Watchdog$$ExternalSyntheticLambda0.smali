.class public final synthetic Lcom/sprd/validationtools/utils/Watchdog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sprd/validationtools/utils/Watchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/sprd/validationtools/utils/Watchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sprd/validationtools/utils/Watchdog$$ExternalSyntheticLambda0;->f$0:Lcom/sprd/validationtools/utils/Watchdog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog$$ExternalSyntheticLambda0;->f$0:Lcom/sprd/validationtools/utils/Watchdog;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/Watchdog;->lambda$wantEat$0$com-sprd-validationtools-utils-Watchdog()V

    return-void
.end method
