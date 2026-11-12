.class public Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "FrontCameraTestActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$ImageSaver;
    }
.end annotation


# static fields
.field private static final CHECK_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FrontCameraTestActivity"

.field private static final TAKE_IMAGE_NAME:Ljava/lang/String; = "frontphoto.jpg"

.field private static final TAKE_PHOTO:I

.field private static mDisplayRotation:I


# instance fields
.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraID:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraSensorOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field private mLightMsg:Landroid/widget/TextView;

.field protected mNeedThumb:Z

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewView:Landroid/view/TextureView;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mTakePhotoBtn:Landroid/widget/Button;

.field private mTakePhotoHandler:Landroid/os/Handler;

.field protected mThumbnailReader:Landroid/media/ImageReader;

.field private mTimeOut:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->captureStillPicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->startPreview(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 66
    const-string v0, "1"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraID:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraSensorOrientation:I

    .line 74
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mNeedThumb:Z

    .line 81
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 83
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mLightMsg:Landroid/widget/TextView;

    .line 95
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 332
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$7;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 355
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$8;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method public static bytesToChar([BI)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 409
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 410
    .local v0, "a":C
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 411
    .local v1, "b":C
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 412
    .local v2, "c":C
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 413
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

    .line 414
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method private captureStillPicture()V
    .locals 7

    .line 202
    const-string v0, "FrontCameraTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    .line 203
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 204
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 205
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 207
    .local v2, "rotation":I
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraSensorOrientation:I

    invoke-static {v2, v4}, Lcom/sprd/validationtools/itemstest/camera/Util;->getOrientation(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 208
    new-instance v3, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    .line 221
    .local v3, "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    const-string v4, "capture  in camera"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    nop

    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "rotation":I
    .end local v3    # "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
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

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 389
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 391
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 395
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 399
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_2
    nop

    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 405
    goto :goto_1

    .line 404
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "FrontCameraTestActivity"

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

    .line 404
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 406
    :goto_1
    return-void

    .line 404
    :goto_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 405
    throw v0
.end method

.method public static isCameraSupport(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 476
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 477
    .local v0, "numberOfCameras":I
    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    .line 478
    .local v1, "info":[Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "FrontCameraTestActivity"

    if-ge v2, v0, :cond_1

    .line 479
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v4, v1, v2

    .line 480
    aget-object v4, v1, v2

    invoke-static {v2, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 481
    aget-object v4, v1, v2

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 482
    const-string v4, "FrontCamera is supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v5

    .line 478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "i":I
    :cond_1
    const-string v2, "FrontCamera is not supported"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v2, 0x0

    return v2
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 471
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "FrontCamera isSupport always return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method private openCamera(Ljava/lang/String;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 229
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 231
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 232
    const-string v2, "no CloseLock"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 233
    return-void

    .line 235
    :cond_0
    const/16 v2, 0x640

    const/16 v4, 0x4b0

    const/16 v5, 0x100

    invoke-static {v2, v4, v5, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 236
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraSensorOrientation:I

    .line 237
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 238
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

    .line 239
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 240
    const-string v2, "openCamera openCamera end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
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

    goto :goto_1

    .line 241
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 242
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

    .line 245
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 246
    :goto_1
    return-void
.end method

.method private startBackgroundThread()V
    .locals 4

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 164
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 165
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 166
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    :cond_0
    return-void
.end method

.method private startPreview(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 300
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "start preview "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 302
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 303
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 305
    .local v2, "surface":Landroid/view/Surface;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 312
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 316
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mNeedThumb:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 317
    const/16 v4, 0x140

    const/16 v7, 0xf0

    const/16 v8, 0x23

    invoke-static {v4, v7, v8, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 318
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 319
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 320
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v4, v6

    .line 318
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 323
    :cond_1
    new-array v4, v6, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 324
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

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

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 178
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 180
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-sprd-validationtools-itemstest-camera-FrontCameraTestActivity()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->storeRusult(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->finish()V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 122
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 124
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 128
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->setContentView(I)V

    .line 129
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->setTitle(I)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->setRequestedOrientation(I)V

    .line 132
    const v1, 0x7f050099

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    .line 134
    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mLightMsg:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    sput v1, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mDisplayRotation:I

    .line 139
    const v1, 0x7f050092

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    .line 140
    new-instance v2, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$4;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-static {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->isCameraSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v1, "FrontCamera not detected"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mLightMsg:Landroid/widget/TextView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->startBackgroundThread()V

    .line 157
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->stopBackgroundThread()V

    .line 383
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 384
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 370
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 371
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->closeCamera()V

    .line 372
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 189
    invoke-static {p0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->isCameraSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "onResume isAvailable reopen camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 198
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 250
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->openCamera(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 256
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 265
    return-void
.end method
