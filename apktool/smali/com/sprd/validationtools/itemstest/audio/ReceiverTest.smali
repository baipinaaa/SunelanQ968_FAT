.class public Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ReceiverTest.java"


# static fields
.field private static final DEFAULT_AUDIO:Ljava/lang/String; = "Orion.ogg"

.field private static final PLAY_LOOP:Z = true

.field private static final SAVE_PATH:Ljava/lang/String; = "/storage/emulated/0/mmi/"

.field private static final SPECIFIC_RINGTONE_NAME:Ljava/lang/String; = "mixtone.wav"

.field private static final TAG:Ljava/lang/String; = "ReceiverTest"

.field private static final USE_SPECIFIC_RINGTONE:Z = true


# instance fields
.field private final PLAY_PASS:I

.field private final SEARCH_FINISHED:I

.field private isSearchFinished:Z

.field private mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

.field private mBackupMode:I

.field mContent:Landroid/widget/TextView;

.field private mFile:Ljava/io/File;

.field private mFilePath:Ljava/lang/String;

.field private mFilePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static bridge synthetic -$$Nest$fputisSearchFinished(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->isSearchFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPlay(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->doPlay()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->SEARCH_FINISHED:I

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->PLAY_PASS:I

    .line 47
    iput v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mBackupMode:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mFilePath:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    .line 52
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->isSearchFinished:Z

    .line 53
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 96
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$3;-><init>(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method private doPlay()V    :ts_doplay

    .locals 6

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "audioNumber":I
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 127
    .local v1, "audioAttrBuilder":Landroid/media/AudioAttributes$Builder;
    sget v2, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->STREAM_VOICE_CALL:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 128
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPlay audioNumber= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiverTest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 137
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 140
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 142
    :catch_2
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 148
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mContent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mixtone.wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void

    :te_doplay
    .catch Ljava/lang/Throwable; {:ts_doplay .. :te_doplay} :ck_doplay

    return-void

    :ck_doplay
    return-void

.end method

.method private getRandom(I)I
    .locals 4
    .param p1, "max"    # I

    .line 217
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 218
    .local v0, "random":D
    int-to-double v2, p1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 219
    .local v2, "result":I
    return v2
.end method

.method private saveMediaFileToSdcard()Ljava/lang/String;
    .locals 2

    .line 228
    const-string v0, "/storage/emulated/0/mmi/mixtone.wav"

    .line 229
    .local v0, "filePath":Ljava/lang/String;
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, p0, v1, v0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->saveToRawResourceSDCard(Landroid/content/Context;ILjava/lang/String;)V

    .line 230
    return-object v0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-sprd-validationtools-itemstest-audio-ReceiverTest()V
    .locals 1

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->createButton(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 59
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 62
    new-instance v1, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 63
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    .line 64
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mContent:Landroid/widget/TextView;

    .line 65
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mContent:Landroid/widget/TextView;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->setContentView(Landroid/view/View;)V

    .line 68
    const v1, 0x7f090131

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->setTitle(I)V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mFilePaths:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->saveMediaFileToSdcard()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mFilePath:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mContent:Landroid/widget/TextView;

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mContent:Landroid/widget/TextView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 225
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 192
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    .line 194
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 177
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mPlayer:Landroid/media/MediaPlayer;

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->isSearchFinished:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->doPlay()V

    .line 183
    :cond_1
    return-void
.end method

.method public saveToRawResourceSDCard(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceResId"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "inStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 235
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 236
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v3, "dstFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 241
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 245
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 246
    const/16 v4, 0xa

    new-array v4, v4, [B

    .line 247
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v5

    .line 248
    const/4 v5, 0x0

    .line 249
    .local v5, "len":I
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 250
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 253
    .local v6, "bs":[B
    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 254
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v4    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "bs":[B
    nop

    .line 260
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_3
    nop

    .line 266
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :cond_4
    :goto_1
    goto :goto_2

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    .end local v4    # "e2":Ljava/io/IOException;
    goto :goto_2

    .line 258
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 255
    :catch_1
    move-exception v4

    .line 256
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5

    .line 260
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    :cond_5
    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_6
    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 272
    :goto_2
    return-void

    .line 259
    :goto_3
    if-eqz v2, :cond_7

    .line 260
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_4

    .line 268
    :catch_2
    move-exception v5

    goto :goto_5

    .line 262
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 263
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_8
    if-eqz v1, :cond_9

    .line 266
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 269
    .local v5, "e2":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 270
    .end local v5    # "e2":Ljava/io/IOException;
    :cond_9
    :goto_6
    nop

    .line 271
    :goto_7
    throw v4
.end method

.method public toSearchFiles(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 202
    .local v4, "tf":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {p0, v4}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->toSearchFiles(Ljava/io/File;)V

    goto :goto_1

    .line 206
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 207
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mFilePaths:Ljava/util/List;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_2
    goto :goto_1

    .line 209
    :catch_0
    move-exception v5

    .line 210
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "pathError"

    invoke-static {p0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 201
    .end local v4    # "tf":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_3
    return-void
.end method
