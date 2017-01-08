.class final Lcom/aadhk/restpos/x;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/KitchenActivity;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/KitchenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/aadhk/restpos/x;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/KitchenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/x;-><init>(Lcom/aadhk/restpos/KitchenActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 393
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v0, 0x231c

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 395
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 396
    iget-object v2, p0, Lcom/aadhk/restpos/x;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/KitchenActivity;->d(Lcom/aadhk/restpos/KitchenActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 401
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 402
    invoke-static {v2, v3}, Lcom/aadhk/restpos/DataTransferService;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/String;

    move-result-object v2

    .line 404
    if-eqz v2, :cond_0

    .line 405
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    new-instance v2, Lcom/aadhk/product/library/a/d;

    new-instance v3, Lcom/aadhk/restpos/v;

    iget-object v4, p0, Lcom/aadhk/restpos/x;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-direct {v3, v4, v0}, Lcom/aadhk/restpos/v;-><init>(Lcom/aadhk/restpos/KitchenActivity;Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/aadhk/restpos/x;->a:Lcom/aadhk/restpos/KitchenActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 408
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 411
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
