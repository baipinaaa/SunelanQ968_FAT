.class public Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SpwCameraTestActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$ImageSaver;
    }
.end annotation


# static fields
.field private static final CHECK_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpwCameraTestActivity"

.field private static final TAKE_IMAGE_NAME:Ljava/lang/String; = "spw_backphoto.jpg"

.field private static final TAKE_PHOTO:I


# instance fields
.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraID:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

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
.method static bridge synthetic -$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->captureStillPicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->startPreview(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mNeedThumb:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 79
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 88
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    .line 253
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 321
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$7;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 344
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$8;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method public static bytesToChar([BI)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 412
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 413
    .local v0, "a":C
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 414
    .local v1, "b":C
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 415
    .local v2, "c":C
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 416
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

    .line 417
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method private captureStillPicture()V
    .locals 6

    .line 190
    const-string v0, "SpwCameraTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    .line 191
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 192
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 193
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 195
    new-instance v2, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$5;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$5;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    .line 203
    .local v2, "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    const-string v3, "capture  in camera"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
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

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 392
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 394
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 398
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 402
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_2
    nop

    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 408
    goto :goto_1

    .line 407
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "SpwCameraTestActivity"

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

    .line 407
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 409
    :goto_1
    return-void

    .line 407
    :goto_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 408
    throw v0
.end method

.method private getCameraID()Ljava/lang/String;
    .locals 3

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "cameraIdList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 381
    const/4 v1, 0x3

    aget-object v1, v0, v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 385
    .end local v0    # "cameraIdList":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraAccessException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpwCameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 463
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 464
    .local v0, "numberOfCameras":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpwCameraTestActivity numberOfCameras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpwCameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 466
    const/4 v1, 0x0

    return v1

    .line 468
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private openCamera(Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 212
    const-string v0, "SpwCameraTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 213
    const-string v1, "no CloseLock"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 215
    return-void

    .line 217
    :cond_0
    const/16 v1, 0xa20

    const/16 v3, 0x798

    const/16 v4, 0x100

    invoke-static {v1, v3, v4, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 218
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera openCamera cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 224
    const-string v1, "openCamera openCamera end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraAccessException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 230
    :goto_1
    return-void
.end method

.method private startBackgroundThread()V
    .locals 4

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 151
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 152
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 153
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    :cond_0
    return-void
.end method

.method private startPreview(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 286
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "start preview "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 288
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 289
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 292
    .local v2, "surface":Landroid/view/Surface;
    nop

    .line 293
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v4

    .line 295
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 300
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 304
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mNeedThumb:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 305
    const/16 v4, 0x140

    const/16 v7, 0xf0

    const/16 v8, 0x23

    invoke-static {v4, v7, v8, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 307
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 308
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 309
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v4, v6

    .line 307
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 312
    :cond_1
    new-array v4, v6, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 313
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 312
    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    :goto_1
    goto :goto_2

    .line 316
    :catch_1
    move-exception v3

    .line 317
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "Failed to create camera capture session"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 165
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 167
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 115
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 118
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->setContentView(I)V

    .line 119
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 120
    const v0, 0x7f050099

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    .line 121
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 122
    const v0, 0x7f050065

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, "mLightMsg":Landroid/widget/TextView;
    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->getCameraID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraID:Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mCameraID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpwCameraTestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "SpwCamera Open Fialed!"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->storeRusult(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->finish()V

    .line 135
    :cond_0
    const v2, 0x7f050092

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    .line 136
    new-instance v3, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$4;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->startBackgroundThread()V

    .line 144
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->stopBackgroundThread()V

    .line 374
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 375
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->closeCamera()V

    .line 362
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 363
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "onResume isAvailable reopen camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 185
    :goto_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 186
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 235
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->openCamera(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 242
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 251
    return-void
.end method
