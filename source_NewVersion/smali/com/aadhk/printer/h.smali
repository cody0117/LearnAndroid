.class public final Lcom/aadhk/printer/h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Ljava/net/Socket;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/h;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/aadhk/printer/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    monitor-exit p0

    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_1
    new-instance v1, Lcom/aadhk/printer/e;

    const-string v2, "TCP printer: close printer error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aadhk/printer/h;->c:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/aadhk/printer/h;->d:I

    .line 63
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 64
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    .line 65
    iget-object v1, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 66
    iget-object v1, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 67
    iget-object v1, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 68
    iget-object v1, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 69
    iget-object v1, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 70
    iget-object v0, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/h;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    new-instance v1, Lcom/aadhk/printer/e;

    const-string v2, "TCP printer: open printer error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)V
    .locals 3
    .parameter

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/h;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/printer/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/aadhk/printer/h;->c:Ljava/lang/String;

    iget v1, p0, Lcom/aadhk/printer/h;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/printer/h;->a(Ljava/lang/String;I)V

    .line 22
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/aadhk/printer/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    iget-object v0, p0, Lcom/aadhk/printer/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    :try_start_2
    new-instance v1, Lcom/aadhk/printer/e;

    const-string v2, "TCP printer print receipt error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
