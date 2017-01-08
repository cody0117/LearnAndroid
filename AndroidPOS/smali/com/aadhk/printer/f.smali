.class final Lcom/aadhk/printer/f;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/printer/d;


# direct methods
.method public constructor <init>(Lcom/aadhk/printer/d;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/aadhk/printer/f;->a:Lcom/aadhk/printer/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 237
    const/4 v0, 0x0

    .line 241
    :try_start_0
    sget-object v1, Lcom/aadhk/printer/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :goto_0
    invoke-static {p1, v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;Landroid/bluetooth/BluetoothSocket;)V

    .line 246
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/f;->a:Lcom/aadhk/printer/d;

    invoke-static {v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/printer/f;->a:Lcom/aadhk/printer/d;

    iget-object v1, p0, Lcom/aadhk/printer/f;->a:Lcom/aadhk/printer/d;

    invoke-static {v1}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 267
    :try_start_3
    iget-object v0, p0, Lcom/aadhk/printer/f;->a:Lcom/aadhk/printer/d;

    invoke-static {v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 269
    :catch_2
    move-exception v0

    goto :goto_0
.end method
