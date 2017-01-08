.class final Lcom/aadhk/restpos/d/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/q;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/q;)V
    .locals 1
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ad;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 505
    .line 507
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->h(Lcom/aadhk/restpos/d/q;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 509
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->b(Lcom/aadhk/restpos/d/q;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v2}, Lcom/aadhk/restpos/d/q;->i(Lcom/aadhk/restpos/d/q;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/dropbox/client2/DropboxAPI;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 519
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 511
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/aadhk/restpos/d/ad;->b:Z

    .line 512
    invoke-virtual {v0}, Lcom/dropbox/client2/exception/DropboxException;->printStackTrace()V

    .line 513
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    if-eqz v1, :cond_0

    .line 521
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 523
    :catch_1
    move-exception v0

    goto :goto_0

    .line 514
    :catch_2
    move-exception v0

    .line 515
    :goto_2
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/aadhk/restpos/d/ad;->b:Z

    .line 516
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 517
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 519
    if-eqz v2, :cond_0

    .line 521
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 523
    :catch_3
    move-exception v0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 521
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 523
    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 519
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 514
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 510
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ad;->b:Z

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 532
    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 533
    new-instance v1, Lcom/aadhk/restpos/d/ae;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ae;-><init>(Lcom/aadhk/restpos/d/ad;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Lcom/aadhk/restpos/c/bp;)V

    .line 539
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 545
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 542
    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0
.end method
