.class public abstract Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;
.super Landroid/os/Binder;
.source "IFingerprintmmi.java"

# interfaces
.implements Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deadpixel_test:I = 0x1

.field static final TRANSACTION_factory_exit:I = 0x2

.field static final TRANSACTION_factory_init:I = 0x3

.field static final TRANSACTION_finger_detect:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_interrupt_test:I = 0x5

.field static final TRANSACTION_spi_test:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    sget-object v0, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 98
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v1

    .line 104
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->spi_test()I

    move-result v2

    .line 149
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_0

    .line 141
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->interrupt_test()I

    move-result v2

    .line 142
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    goto :goto_0

    .line 134
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->finger_detect()I

    move-result v2

    .line 135
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    goto :goto_0

    .line 127
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->factory_init()I

    move-result v2

    .line 128
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    goto :goto_0

    .line 120
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->factory_exit()I

    move-result v2

    .line 121
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    goto :goto_0

    .line 113
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->deadpixel_test()I

    move-result v2

    .line 114
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    nop

    .line 158
    .end local v2    # "_result":I
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
