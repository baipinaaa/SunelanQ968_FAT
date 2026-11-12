.class Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
.super Ljava/lang/Object;
.source "PhaseCheckParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/PhaseCheckParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parcel"
.end annotation


# instance fields
.field private mData:[B

.field private mDataSize:I

.field private mPos:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 788
    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    .line 789
    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>()V

    return-void
.end method


# virtual methods
.method public LogArray()V
    .locals 4

    .line 870
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 872
    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 873
    goto :goto_1

    .line 874
    :cond_0
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel LogArray : ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public dataSize()I
    .locals 1

    .line 825
    iget v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    return v0
.end method

.method public readByte()B
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    iget v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    aget-byte v0, v0, v1

    .line 813
    .local v0, "b":B
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 814
    return v0
.end method

.method public readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    .line 807
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    iget v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 809
    return-void
.end method

.method public readInt()I
    .locals 6

    .line 839
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    iget v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 840
    .local v2, "b0":I
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 841
    .local v3, "b1":I
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 842
    .local v4, "b2":I
    add-int/lit8 v5, v1, 0x3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    .line 843
    .local v0, "b3":I
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 844
    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v5, v4, 0x10

    or-int/2addr v1, v5

    shl-int/lit8 v5, v0, 0x18

    or-int/2addr v1, v5

    return v1
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v0

    .line 853
    .local v0, "nNum":I
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readString num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-array v1, v0, [B

    .line 855
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readByteArray([B)V

    .line 857
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public recycle()V
    .locals 0

    .line 861
    invoke-virtual {p0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->reset()V

    .line 862
    return-void
.end method

.method public reset()V
    .locals 1

    .line 865
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 866
    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    .line 867
    return-void
.end method

.method public setDataPosition(I)V
    .locals 0
    .param p1, "i"    # I

    .line 848
    iput p1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 849
    return-void
.end method

.method public writeByte(B)V
    .locals 3
    .param p1, "b"    # B

    .line 818
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ningbiao writeByte b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    iget v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    aput-byte p1, v0, v1

    .line 820
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 821
    iget v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    .line 822
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 792
    if-nez p3, :cond_0

    .line 793
    return-void

    .line 794
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 795
    invoke-virtual {p0, p1, p2, p3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeByteArrayInternal([BII)V

    .line 796
    return-void
.end method

.method public writeByteArrayInternal([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 799
    if-nez p3, :cond_0

    .line 800
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    iget v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    iget v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 803
    iget v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    .line 804
    return-void
.end method

.method public writeInt(I)V
    .locals 4
    .param p1, "i"    # I

    .line 829
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ningbiao writeInt i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mData:[B

    iget v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 831
    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 832
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 833
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 834
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mPos:I

    .line 835
    iget v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->mDataSize:I

    .line 836
    return-void
.end method
