.class public final Lcom/aadhk/printer/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/io/OutputStream;

.field private c:Landroid/bluetooth/BluetoothSocket;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    sput-object v0, Lcom/aadhk/printer/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aadhk/printer/d;->c:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/printer/d;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/aadhk/printer/d;->c:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/printer/d;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/printer/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/aadhk/printer/d;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .parameter

    .prologue
    .line 132
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/printer/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found device:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/aadhk/printer/d;->c:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/aadhk/printer/d;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_1
    monitor-exit p0

    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    :try_start_1
    new-instance v1, Lcom/aadhk/printer/h;

    const-string v2, "Bluetooth printer: close printer error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    new-instance v1, Lcom/aadhk/printer/e;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/printer/e;-><init>(Lcom/aadhk/printer/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 151
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

    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/aadhk/printer/d;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bluetoothAddress1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/printer/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/aadhk/printer/d;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/aadhk/printer/d;->a(Ljava/lang/String;)V

    .line 32
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 37
    :cond_0
    array-length v1, p1

    if-le v1, v3, :cond_4

    move v1, v0

    move v2, v0

    .line 38
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

    .line 64
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 42
    :cond_2
    add-int/lit16 v0, v2, 0x400

    :try_start_2
    array-length v3, p1

    if-le v0, v3, :cond_3

    .line 43
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 44
    const/4 v3, 0x0

    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :goto_2
    iget-object v3, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 51
    add-int/lit16 v2, v2, 0x400

    .line 52
    const-wide/16 v3, 0x1e

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_3
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 47
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_3
    new-instance v1, Lcom/aadhk/printer/h;

    const-string v2, "Bluetooth printer print receipt error"

    invoke-direct {v1, v2, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    iget-object v0, p0, Lcom/aadhk/printer/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
