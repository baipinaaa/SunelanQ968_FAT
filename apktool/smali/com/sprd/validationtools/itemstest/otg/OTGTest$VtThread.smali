.class Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;
.super Ljava/lang/Thread;
.source "OTGTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/otg/OTGTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VtThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    .line 198
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 200
    const-string v0, "deleteDocument exception"

    const/4 v1, 0x0

    .line 201
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 202
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 204
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v4, v4, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    if-nez v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetusbMassStoragePath(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getCurrentAccessUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetusbMassStoragePath(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getCurrentAccessUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 206
    .local v4, "doc":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v6}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "text/plain"

    const-string v9, "otgtest"

    invoke-static {v7, v4, v8, v9}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fputdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;Landroid/net/Uri;)V

    .line 207
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "docUri= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v8}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v6}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "rw"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v3, v6

    .line 209
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v6, v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->createOutputStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v2, v6

    .line 210
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mOTGTestFlag:[B

    const/16 v7, 0x37

    aput-byte v7, v6, v5

    .line 211
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mOTGTestFlag:[B

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 212
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 213
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v6, v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->createInputStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/FileInputStream;

    move-result-object v6

    move-object v1, v6

    .line 214
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mOTGTestFlag:[B

    invoke-virtual {v1, v6, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 215
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 216
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mOTGTestFlag:[B

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_0

    .line 217
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->result:[B

    aput-byte v5, v6, v5

    goto :goto_0

    .line 219
    :cond_0
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->result:[B

    aput-byte v8, v6, v5

    .line 222
    .end local v4    # "doc":Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v4, v4, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v5, v5, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    :try_start_1
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v4}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 233
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 233
    :goto_1
    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    throw v0

    .line 227
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 223
    :catch_1
    move-exception v4

    .line 224
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "=== error: Exception happens when OTG I/O! ==="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v4}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 233
    :goto_2
    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    goto :goto_3

    .line 233
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 229
    :catch_2
    move-exception v4

    .line 230
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 237
    :goto_3
    nop

    .line 238
    return-void

    .line 233
    :goto_4
    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    throw v0

    .line 228
    :goto_5
    :try_start_6
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v5}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 233
    :goto_6
    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    goto :goto_7

    .line 233
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 229
    :catch_3
    move-exception v5

    .line 230
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 237
    :goto_7
    throw v4

    .line 233
    :goto_8
    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    throw v0
.end method
