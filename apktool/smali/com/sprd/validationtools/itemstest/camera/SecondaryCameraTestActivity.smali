.class public Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SecondaryCameraTestActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$ImageSaver;
    }
.end annotation


# static fields
.field private static final CHECK_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecondaryCameraTestActivity"

.field private static final TAKE_IMAGE_NAME:Ljava/lang/String; = "sec_backphoto.jpg"

.field private static final TAKE_PHOTO:I


# instance fields
.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCam3Type:Ljava/lang/String;

.field private mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraID:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field protected mNeedThumb:Z

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewView:Landroid/view/TextureView;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mTakePhotoBtn:Landroid/widget/Button;

.field private mTakePhotoHandler:Landroid/os/Handler;

.field protected mThumbnailReader:Landroid/media/ImageReader;

.field private mTimeOut:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->captureStillPicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->startPreview(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 63
    const-string v0, "2"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraID:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mNeedThumb:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 81
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 90
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCam3Type:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 332
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$7;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 355
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$8;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method public static bytesToChar([BI)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 415
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 416
    .local v0, "a":C
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 417
    .local v1, "b":C
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 418
    .local v2, "c":C
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 419
    .local v3, "d":C
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v0, v5, v6

    const/4 v6, 0x1

    aput-char v1, v5, v6

    const/4 v6, 0x2

    aput-char v2, v5, v6

    const/4 v6, 0x3

    aput-char v3, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 420
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method private captureStillPicture()V
    .locals 6

    .line 197
    const-string v0, "SecondaryCameraTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    .line 198
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 199
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 200
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    .line 201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 202
    new-instance v2, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$5;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$5;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    .line 210
    .local v2, "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    const-string v3, "capture  in camera"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    nop

    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture a picture1 fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 395
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 397
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 401
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 405
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_2
    nop

    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 411
    goto :goto_1

    .line 410
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "SecondaryCameraTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 412
    :goto_1
    return-void

    .line 410
    :goto_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 411
    throw v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 467
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 469
    .local v0, "numberOfCameras":I
    const-string v1, "persist.sys.cam3.type"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "cam3type":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecondaryCameraTestActivity numberOfCameras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cam3type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecondaryCameraTestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v2, 0x0

    const/4 v4, 0x2

    if-gt v0, v4, :cond_0

    .line 473
    return v2

    .line 475
    :cond_0
    const/4 v4, 0x0

    .line 476
    .local v4, "calibraionSupportFlag":Z
    const-string v5, "persist.sys.3d.calibraion"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "calibraionSupport":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecondaryCameraTestActivity calibraionSupport="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-eqz v5, :cond_1

    const-string v3, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    const/4 v4, 0x1

    .line 481
    :cond_1
    const-string v3, "back_blur"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "back_sbs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    .line 484
    :cond_2
    return v2

    .line 482
    :cond_3
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private openCamera(Ljava/lang/String;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 218
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 220
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 221
    const-string v2, "no CloseLock"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 223
    return-void

    .line 225
    :cond_0
    const-string v2, "back_sbs"

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCam3Type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x100

    if-eqz v2, :cond_1

    .line 226
    const/16 v2, 0x640

    const/16 v5, 0x4b0

    invoke-static {v2, v5, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    goto :goto_0

    .line 228
    :cond_1
    const/16 v2, 0xa20

    const/16 v5, 0x798

    invoke-static {v2, v5, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera openCamera cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 236
    const-string v2, "openCamera openCamera end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 237
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 238
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    nop

    .line 242
    :goto_2
    return-void
.end method

.method private startBackgroundThread()V
    .locals 4

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 156
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    :cond_0
    return-void
.end method

.method private startPreview(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 298
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "start preview "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 300
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 301
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 303
    .local v2, "surface":Landroid/view/Surface;
    nop

    .line 304
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v4

    .line 306
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 311
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 315
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mNeedThumb:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 316
    const/16 v4, 0x140

    const/16 v7, 0xf0

    const/16 v8, 0x23

    invoke-static {v4, v7, v8, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 318
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 319
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 320
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v4, v6

    .line 318
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 323
    :cond_1
    new-array v4, v6, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 324
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 323
    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :goto_1
    goto :goto_2

    .line 327
    :catch_1
    move-exception v3

    .line 328
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "Failed to create camera capture session"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 170
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 119
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 122
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->setContentView(I)V

    .line 123
    const v0, 0x7f050099

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    .line 124
    const v0, 0x7f050065

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "mLightMsg":Landroid/widget/TextView;
    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    const-string v2, "persist.sys.cam3.type"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate cam3.type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecondaryCameraTestActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v3, "back_blur"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string v3, "persist.sys.cam3.multi.cam.id"

    const-string v5, "2"

    invoke-static {v3, v5}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraID:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_0
    const-string v3, "back_sbs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    const-string v3, "0"

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraID:Ljava/lang/String;

    .line 135
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCam3Type:Ljava/lang/String;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate mCam3Type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCam3Type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate mCameraID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const v3, 0x7f050092

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    .line 139
    new-instance v4, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$4;

    invoke-direct {v4, p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->startBackgroundThread()V

    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->stopBackgroundThread()V

    .line 389
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 390
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCam3Type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "back_sbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "persist.camera.sbs.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "persist.sys.camera.raw.mode"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->closeCamera()V

    .line 377
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 378
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCam3Type:Ljava/lang/String;

    const-string v1, "back_sbs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "persist.camera.sbs.mode"

    const-string v1, "slave"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "persist.sys.camera.raw.mode"

    const-string v1, "raw"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "onResume isAvailable reopen camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 192
    :goto_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 193
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 247
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->openCamera(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 254
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 263
    return-void
.end method
