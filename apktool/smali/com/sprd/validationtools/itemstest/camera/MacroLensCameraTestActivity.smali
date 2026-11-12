.class public Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "MacroLensCameraTestActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$ImageSaver;
    }
.end annotation


# static fields
.field private static final CHECK_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MacroLensCameraTestActivity"

.field private static final TAKE_IMAGE_NAME:Ljava/lang/String; = "MacroLens_backphoto.jpg"

.field private static final TAKE_PHOTO:I


# instance fields
.field private mBackgroundThread:Landroid/os/HandlerThread;

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
.method static bridge synthetic -$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->captureStillPicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->startPreview(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 60
    const-string v0, "4"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraID:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mNeedThumb:Z

    .line 76
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 78
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 87
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 311
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 334
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$8;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method private captureStillPicture()V
    .locals 6

    .line 179
    const-string v0, "MacroLensCameraTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    .line 180
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 181
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 182
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 184
    new-instance v2, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$5;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$5;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    .line 192
    .local v2, "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    const-string v3, "capture  in camera"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "CaptureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
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

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 370
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 372
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 376
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 380
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_2
    nop

    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 386
    goto :goto_1

    .line 385
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "MacroLensCameraTestActivity"

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

    .line 385
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 387
    :goto_1
    return-void

    .line 385
    :goto_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 386
    throw v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 432
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 433
    .local v0, "numberOfCameras":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MacroLensCameraTestActivity numberOfCameras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MacroLensCameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 435
    const/4 v1, 0x0

    return v1

    .line 437
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private openCamera(Ljava/lang/String;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 200
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 202
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 203
    const-string v2, "no CloseLock"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 205
    return-void

    .line 207
    :cond_0
    const/16 v2, 0xa20

    const/16 v4, 0x798

    const/16 v5, 0x100

    invoke-static {v2, v4, v5, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 208
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 210
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

    .line 212
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 214
    const-string v2, "openCamera openCamera end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
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

    .line 215
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 216
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

    .line 219
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 220
    :goto_1
    return-void
.end method

.method private startBackgroundThread()V
    .locals 4

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 142
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    :cond_0
    return-void
.end method

.method private startPreview(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 276
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "start preview "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 278
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 279
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 282
    .local v2, "surface":Landroid/view/Surface;
    nop

    .line 283
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v4

    .line 285
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 290
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 294
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mNeedThumb:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 295
    const/16 v4, 0x140

    const/16 v7, 0xf0

    const/16 v8, 0x23

    invoke-static {v4, v7, v8, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 297
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 298
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 299
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v4, v6

    .line 297
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 302
    :cond_1
    new-array v4, v6, [Landroid/view/Surface;

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mImageReader:Landroid/media/ImageReader;

    .line 303
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraCaptureSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    .line 302
    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :goto_1
    goto :goto_2

    .line 306
    :catch_1
    move-exception v3

    .line 307
    .local v3, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "Failed to create camera capture session"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v3    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 154
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 156
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 117
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->setContentView(I)V

    .line 118
    const v0, 0x7f050099

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 120
    const v0, 0x7f050065

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "mLightMsg":Landroid/widget/TextView;
    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mCameraID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MacroLensCameraTestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const v2, 0x7f050092

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    .line 125
    new-instance v3, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$4;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->startBackgroundThread()V

    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mTakePhotoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 361
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->stopBackgroundThread()V

    .line 364
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 365
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->closeCamera()V

    .line 352
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 353
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "onResume isAvailable reopen camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 174
    :goto_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 175
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 225
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mCameraID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->openCamera(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 232
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 241
    return-void
.end method
