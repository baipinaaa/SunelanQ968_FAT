.class public Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "CameraTestActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$ImageSaver;
    }
.end annotation


# static fields
.field private static final CAMERA_FLASH_LIGHT:I = 0x0

.field private static final CAMERA_FLASH_LIGHT_CLOSE:I = 0x2

.field private static final CAMERA_SECOND_FLASH_LIGHT:I = 0x1

.field private static final CAMERA_SECOND_FLASH_LIGHT_CLOSE:I = 0x3

.field private static final CAMERA_TIME_OUT:I = 0x4

.field private static final CHECK_PHOTO:I = 0x1

.field private static final IS_SUPPORT_FLASHLIGHT:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraTestActivity"

.field private static final TAKE_IMAGE_NAME:Ljava/lang/String; = "backphoto.jpg"

.field private static final TAKE_PHOTO:I

.field private static mDisplayRotation:I


# instance fields
.field private isSurportCameraFlash:Z

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraID:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraSensorOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsPause:Z

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
.method static bridge synthetic -$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->captureStillPicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseFlashLight(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->closeFlashLight(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenFlashLight(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->openFlashLight(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->startPreview(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 66
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraID:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraSensorOrientation:I

    .line 74
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mNeedThumb:Z

    .line 81
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 83
    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mLightMsg:Landroid/widget/TextView;

    .line 96
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->isSurportCameraFlash:Z

    .line 102
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mIsPause:Z

    .line 106
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$4;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    .line 358
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 425
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 450
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$9;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$9;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method public static bytesToChar([BI)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 520
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 521
    .local v0, "a":C
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 522
    .local v1, "b":C
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 523
    .local v2, "c":C
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 524
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

    .line 525
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method private captureStillPicture()V
    .locals 7

    .line 286
    const-string v0, "CameraTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    .line 287
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 288
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 289
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 291
    .local v2, "rotation":I
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraSensorOrientation:I

    invoke-static {v2, v4}, Lcom/sprd/validationtools/itemstest/camera/Util;->getOrientation(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    new-instance v3, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$6;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$6;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    .line 305
    .local v3, "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    const-string v4, "capture  in camera"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 307
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    nop

    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "rotation":I
    .end local v3    # "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
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

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 500
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 502
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 506
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 510
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_2
    nop

    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 516
    goto :goto_1

    .line 515
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "CameraTestActivity"

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

    .line 515
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 517
    :goto_1
    return-void

    .line 515
    :goto_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 516
    throw v0
.end method

.method private closeFlashLight(I)V
    .locals 4
    .param p1, "type"    # I

    .line 257
    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_0

    .line 258
    const-string v2, "0x11"

    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 261
    :cond_0
    const-string v2, "0x21"

    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    :goto_0
    return-void
.end method

.method public static isCameraSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 587
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 588
    .local v0, "numberOfCameras":I
    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    .line 589
    .local v1, "info":[Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "CameraTestActivity"

    if-ge v2, v0, :cond_1

    .line 590
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v4, v1, v2

    .line 591
    aget-object v4, v1, v2

    invoke-static {v2, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 592
    aget-object v4, v1, v2

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    .line 593
    const-string v4, "Camera is supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v3, 0x1

    return v3

    .line 589
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    .end local v2    # "i":I
    :cond_1
    const-string v2, "Camera is not supported"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v2, 0x0

    return v2
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 582
    const-string v0, "CameraTestActivity"

    const-string v1, "Camera isSupport always return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method private openCamera(Ljava/lang/String;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 314
    const-string v0, "CameraTestActivity"

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 316
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 317
    const-string v2, "no CloseLock"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 319
    return-void

    .line 321
    :cond_0
    const/16 v2, 0x640

    const/16 v4, 0x4b0

    const/16 v5, 0x100

    invoke-static {v2, v4, v5, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 322
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraSensorOrientation:I

    .line 323
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 325
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

    .line 327
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 329
    const-string v2, "openCamera openCamera end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 333
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

    .line 330
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 331
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

    .line 334
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 335
    :goto_1
    return-void
.end method

.method private openFlashLight(I)V
    .locals 4
    .param p1, "type"    # I

    .line 246
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mIsPause:Z

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_1

    .line 248
    const-string v2, "0x10"

    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 251
    :cond_1
    const-string v2, "0x20"

    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    :goto_0
    return-void
.end method

.method private openFlashLightByCameraId(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .line 231
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mIsPause:Z

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFlashLightByCameraId cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 234
    const-string v0, "0x20"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    const-string v0, "0x10"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 4

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 207
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraHandler:Landroid/os/Handler;

    .line 209
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    :cond_0
    return-void
.end method

.method private startDoubleFlashLightTest()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void
.end method

.method private startPreview(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 391
    const-string v0, "CameraTestActivity"

    const-string v1, "start preview "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 393
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 394
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 396
    .local v2, "surface":Landroid/view/Surface;
    nop

    .line 397
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_0

    .line 398
    :catch_0
    move-exception v4

    .line 399
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 404
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_0

    .line 405
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 408
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mNeedThumb:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 409
    const/16 v4, 0x140

    const/16 v7, 0xf0

    const/16 v8, 0x23

    invoke-static {v4, v7, v8, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 411
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 412
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 413
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v4, v6

    .line 411
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 416
    :cond_1
    new-array v4, v6, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 417
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 416
    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :goto_1
    goto :goto_2

    .line 420
    :catch_1
    move-exception v3

    .line 421
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "Failed to create camera capture session"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 221
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 223
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private writeFlashDev(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 267
    const-string v0, "/sys/devices/virtual/misc/sprd_flash/test"

    invoke-static {v0, p1}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-sprd-validationtools-itemstest-camera-CameraTestActivity()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->storeRusult(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->finish()V

    .line 191
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 157
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 159
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 163
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->setContentView(I)V

    .line 164
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->setTitle(I)V

    .line 165
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->setRequestedOrientation(I)V

    .line 166
    const v1, 0x7f050099

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    .line 167
    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mLightMsg:Landroid/widget/TextView;

    .line 168
    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    sput v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mDisplayRotation:I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate mCameraID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const v1, 0x7f050092

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    .line 173
    new-instance v3, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$5;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$5;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const-string v1, "oncreate IS_SUPPORT_FLASHLIGHT=false"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->isCameraSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string v1, "Camera not detected"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mLightMsg:Landroid/widget/TextView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->startBackgroundThread()V

    .line 195
    :goto_0
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    :cond_0
    :try_start_0
    const-string v0, "0x11"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V

    .line 485
    const-string v0, "0x21"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->writeFlashDev(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 491
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->stopBackgroundThread()V

    .line 494
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 495
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 467
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 468
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->closeCamera()V

    .line 469
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 272
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 273
    invoke-static {p0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->isCameraSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const-string v0, "CameraTestActivity"

    const-string v1, "onResume isAvailable reopen camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 282
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 340
    const-string v0, "CameraTestActivity"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->openCamera(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 347
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 356
    return-void
.end method
