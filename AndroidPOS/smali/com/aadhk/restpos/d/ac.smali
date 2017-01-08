.class final Lcom/aadhk/restpos/d/ac;
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
    .line 453
    iput-object p1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ac;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 459
    .line 461
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->h(Lcom/aadhk/restpos/d/q;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/dropbox/client2/exception/DropboxUnlinkedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 463
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->b(Lcom/aadhk/restpos/d/q;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->i(Lcom/aadhk/restpos/d/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/client2/DropboxAPI;->putFileOverwrite(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/dropbox/client2/exception/DropboxUnlinkedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 478
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 464
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 466
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/aadhk/restpos/d/ac;->b:Z

    .line 467
    invoke-virtual {v0}, Lcom/dropbox/client2/exception/DropboxUnlinkedException;->printStackTrace()V

    .line 468
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 478
    if-eqz v2, :cond_0

    .line 480
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 481
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 469
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 470
    :goto_2
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/aadhk/restpos/d/ac;->b:Z

    .line 471
    invoke-virtual {v0}, Lcom/dropbox/client2/exception/DropboxException;->printStackTrace()V

    .line 472
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 478
    if-eqz v2, :cond_0

    .line 480
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 481
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 473
    :catch_5
    move-exception v0

    move-object v2, v1

    .line 474
    :goto_3
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lcom/aadhk/restpos/d/ac;->b:Z

    .line 475
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 476
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 478
    if-eqz v2, :cond_0

    .line 480
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 481
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_1

    .line 480
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 483
    :cond_1
    :goto_5
    throw v0

    .line 481
    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 478
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 473
    :catch_8
    move-exception v0

    goto :goto_3

    .line 469
    :catch_9
    move-exception v0

    goto :goto_2

    .line 464
    :catch_a
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 490
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 491
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/ac;->b:Z

    .line 492
    iget-object v1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 497
    return-void
.end method
