.class public final Lcom/aadhk/printer/k;
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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    monitor-exit p0

    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    new-instance v1, Lcom/aadhk/printer/h;

    const-string v2, "TCP printer: close printer error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
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
    .line 106
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aadhk/printer/k;->c:Ljava/lang/String;

    .line 107
    iput p2, p0, Lcom/aadhk/printer/k;->d:I

    .line 108
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 109
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    .line 110
    iget-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 111
    iget-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 112
    iget-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 113
    iget-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 114
    iget-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    new-instance v1, Lcom/aadhk/printer/h;

    const-string v2, "TCP printer: open printer error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)V
    .locals 9
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v0, 0x0

    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/aadhk/printer/k;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/aadhk/printer/k;->c:Ljava/lang/String;

    iget v2, p0, Lcom/aadhk/printer/k;->d:I

    invoke-virtual {p0, v1, v2}, Lcom/aadhk/printer/k;->a(Ljava/lang/String;I)V

    .line 25
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 30
    :cond_0
    array-length v1, p1

    if-le v1, v3, :cond_4

    move v1, v0

    move v2, v0

    .line 31
    :goto_0
    int-to-double v3, v1

    array-length v0, p1

    int-to-double v5, v0

    const-wide/high16 v7, 0x4090

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-ltz v0, :cond_2

    .line 58
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 35
    :cond_2
    add-int/lit16 v0, v2, 0x400

    :try_start_2
    array-length v3, p1

    if-le v0, v3, :cond_3

    .line 36
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 37
    const/4 v3, 0x0

    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :goto_2
    iget-object v3, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 44
    add-int/lit16 v2, v2, 0x400

    .line 45
    const-wide/16 v3, 0x1e

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_3
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 40
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :try_start_3
    new-instance v1, Lcom/aadhk/printer/h;

    const-string v2, "TCP printer print receipt error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 49
    iget-object v0, p0, Lcom/aadhk/printer/k;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
