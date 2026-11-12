.class Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;
.super Ljava/lang/Object;
.source "PhaseCheckParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/PhaseCheckParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdaptBinder"
.end annotation


# instance fields
.field private mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private socket:Landroid/net/LocalSocket;

.field private socketAddr:Landroid/net/LocalSocketAddress;

.field final synthetic this$0:Lcom/sprd/validationtools/PhaseCheckParse;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/PhaseCheckParse;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sprd/validationtools/PhaseCheckParse;

    .line 615
    iput-object p1, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->this$0:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    .line 609
    new-instance v0, Landroid/net/LocalSocketAddress;

    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetSOCKET_NAME()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socketAddr:Landroid/net/LocalSocketAddress;

    .line 616
    new-instance v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    invoke-direct {v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    .line 617
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    .line 618
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->code:I

    .line 619
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    iput v1, v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    .line 620
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    iput v1, v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    .line 621
    return-void
.end method

.method private declared-synchronized convertAdaptParcel(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .param p3, "reply"    # Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    monitor-enter p0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    if-nez v0, :cond_0

    .line 737
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "convertAdaptParcel2: mAdpt == null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    .line 740
    .end local p0    # "this":Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;
    :cond_0
    :try_start_1
    iput p1, v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->code:I

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V

    .line 743
    invoke-virtual {p3, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V

    .line 746
    invoke-virtual {p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v1

    new-array v1, v1, [B

    .line 747
    .local v1, "bData":[B
    invoke-virtual {p2, v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readByteArray([B)V

    .line 748
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 749
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    iget-object v3, v3, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v2

    new-array v2, v2, [B

    .line 753
    .local v2, "bReply":[B
    invoke-virtual {p3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readByteArray([B)V

    .line 754
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 755
    iget-object v4, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    iget-object v4, v4, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    invoke-virtual {p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v5

    add-int/2addr v5, v3

    aget-byte v6, v2, v3

    aput-byte v6, v4, v5

    .line 754
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    invoke-virtual {p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v4

    iput v4, v3, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    .line 758
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    invoke-virtual {p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v4

    iput v4, v3, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    .line 759
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertAdaptParcel2: dataSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", replySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 760
    invoke-virtual {p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 759
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V

    .line 764
    invoke-virtual {p3, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    monitor-exit p0

    return-void

    .line 735
    .end local v1    # "bData":[B
    .end local v2    # "bReply":[B
    .end local p1    # "code":I
    .end local p2    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local p3    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized convertParcel(Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;)V
    .locals 4
    .param p1, "adpt"    # Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;
    .param p2, "code"    # I
    .param p3, "data"    # Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .param p4, "reply"    # Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    monitor-enter p0

    .line 718
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V

    .line 719
    invoke-virtual {p4, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V

    .line 722
    iget-object v1, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    iget v2, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    invoke-virtual {p3, v1, v0, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeByteArrayInternal([BII)V

    .line 723
    iget-object v1, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    iget v2, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    iget v3, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    invoke-virtual {p4, v1, v2, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeByteArrayInternal([BII)V

    .line 726
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertParcel: dataSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", replySize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 727
    invoke-virtual {p4}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p3, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V

    .line 732
    invoke-virtual {p4, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->setDataPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 717
    .end local p0    # "this":Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;
    .end local p1    # "adpt":Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;
    .end local p2    # "code":I
    .end local p3    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local p4    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private int2byte([BII)V
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # I

    .line 624
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 625
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 626
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 627
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 628
    return-void
.end method


# virtual methods
.method public byte2Int([BI)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .line 631
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 632
    .local v0, "b0":I
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 633
    .local v1, "b1":I
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 634
    .local v2, "b2":I
    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 635
    .local v3, "b3":I
    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v0

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public declared-synchronized sendCmdAndRecResult(Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;)V
    .locals 10
    .param p1, "adpt"    # Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    monitor-enter p0

    .line 639
    :try_start_0
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send cmd: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 642
    .local v1, "buf":[B
    iget v2, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->code:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->int2byte([BII)V

    .line 643
    iget v2, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4, v2}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->int2byte([BII)V

    .line 644
    iget v2, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    const/16 v5, 0x8

    invoke-direct {p0, v1, v5, v2}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->int2byte([BII)V

    .line 647
    iget-object v2, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    iget v6, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    iget v7, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    add-int/2addr v6, v7

    const/16 v7, 0xc

    invoke-static {v2, v3, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->code:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataSize = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "replySize = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 655
    const/4 v2, 0x0

    :try_start_1
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    iput-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    .line 656
    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_0

    .line 657
    :try_start_2
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v8, "isConnected..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    iget-object v8, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socketAddr:Landroid/net/LocalSocketAddress;

    invoke-virtual {v6, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 688
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 661
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSocketClient connect is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 663
    if-eqz v6, :cond_1

    .line 664
    :try_start_4
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v8, "write..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 666
    iget-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 667
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v8, "write succ..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 669
    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mInputStream:Ljava/io/InputStream;

    .line 670
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v8, "read ...."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v6, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 672
    .local v0, "count":I
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0, v1, v3}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->byte2Int([BI)I

    move-result v6

    iput v6, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->code:I

    .line 676
    invoke-virtual {p0, v1, v4}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->byte2Int([BI)I

    move-result v4

    iput v4, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    .line 677
    invoke-virtual {p0, v1, v5}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->byte2Int([BI)I

    move-result v4

    iput v4, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    .line 679
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replySize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v4, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->data:[B

    iget v5, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->dataSize:I

    iget v6, p1, Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;->replySize:I

    add-int/2addr v5, v6

    invoke-static {v1, v7, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 694
    .end local v0    # "count":I
    const/4 v0, 0x0

    .line 695
    .end local v1    # "buf":[B
    .local v0, "buf":[B
    :try_start_6
    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 696
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 698
    .end local p0    # "this":Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;
    :cond_2
    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 699
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 701
    :cond_3
    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_5

    .line 702
    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 704
    iput-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 706
    :cond_4
    iput-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 712
    :cond_5
    :goto_1
    nop

    .line 714
    monitor-exit p0

    return-void

    .line 709
    :catch_1
    move-exception v1

    .line 710
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 711
    monitor-exit p0

    return-void

    .line 693
    .end local v0    # "buf":[B
    .local v1, "buf":[B
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 688
    :catch_2
    move-exception v0

    .line 689
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_8
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed get output stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 694
    const/4 v1, 0x0

    .line 695
    :try_start_9
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_6

    .line 696
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 698
    :cond_6
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mInputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_7

    .line 699
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 701
    :cond_7
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_9

    .line 702
    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 703
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V

    .line 704
    iput-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    goto :goto_3

    .line 706
    :cond_8
    iput-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 712
    :cond_9
    :goto_3
    nop

    .line 691
    monitor-exit p0

    return-void

    .line 709
    :catch_3
    move-exception v2

    .line 710
    .local v2, "e":Ljava/io/IOException;
    :try_start_a
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 711
    monitor-exit p0

    return-void

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v1, 0x0

    .line 695
    :try_start_b
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_a

    .line 696
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 698
    :cond_a
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mInputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_b

    .line 699
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 701
    :cond_b
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_d

    .line 702
    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 703
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V

    .line 704
    iput-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;

    goto :goto_5

    .line 706
    :cond_c
    iput-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->socket:Landroid/net/LocalSocket;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 712
    :cond_d
    :goto_5
    nop

    .line 713
    :try_start_c
    throw v0

    .line 709
    :catch_4
    move-exception v0

    .line 710
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 711
    monitor-exit p0

    return-void

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "buf":[B
    .end local p1    # "adpt":Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .param p3, "reply"    # Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 769
    :try_start_0
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transact start...."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->convertAdaptParcel(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;)V

    .line 773
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->sendCmdAndRecResult(Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;)V

    .line 774
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->mAdpt:Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->convertParcel(Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;)V

    .line 776
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transact end...."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    monitor-exit p0

    return-void

    .line 768
    .end local p0    # "this":Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;
    .end local p1    # "code":I
    .end local p2    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local p3    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local p4    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
