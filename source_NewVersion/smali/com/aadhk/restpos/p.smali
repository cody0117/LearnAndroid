.class final Lcom/aadhk/restpos/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DatabaseActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/p;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 545
    .line 547
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/DatabaseActivity;->g(Lcom/aadhk/restpos/DatabaseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->a(Lcom/aadhk/restpos/DatabaseActivity;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/DatabaseActivity;->h(Lcom/aadhk/restpos/DatabaseActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/dropbox/client2/DropboxAPI;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 559
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 551
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/aadhk/restpos/p;->b:Z

    .line 552
    invoke-virtual {v0}, Lcom/dropbox/client2/exception/DropboxException;->printStackTrace()V

    .line 553
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 559
    if-eqz v1, :cond_0

    .line 561
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 563
    :catch_1
    move-exception v0

    goto :goto_0

    .line 554
    :catch_2
    move-exception v0

    .line 555
    :goto_2
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/aadhk/restpos/p;->b:Z

    .line 556
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 557
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 559
    if-eqz v2, :cond_0

    .line 561
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 563
    :catch_3
    move-exception v0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 561
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 563
    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 559
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 554
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 550
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/aadhk/restpos/p;->b:Z

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 573
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 574
    new-instance v1, Lcom/aadhk/restpos/q;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/q;-><init>(Lcom/aadhk/restpos/p;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Lcom/aadhk/restpos/c/ay;)V

    .line 580
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 587
    :goto_0
    return-void

    .line 582
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 583
    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 584
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0
.end method
