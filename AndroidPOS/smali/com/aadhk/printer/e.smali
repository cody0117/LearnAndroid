.class final Lcom/aadhk/printer/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aadhk/printer/d;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aadhk/printer/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    iput-object p2, p0, Lcom/aadhk/printer/e;->b:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 156
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    iget-object v1, p0, Lcom/aadhk/printer/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetoothName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/printer/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-static {v0}, Lcom/aadhk/printer/d;->b(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetoothDevice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    if-eqz v2, :cond_0

    .line 162
    new-instance v0, Lcom/aadhk/printer/f;

    iget-object v1, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/printer/f;-><init>(Lcom/aadhk/printer/d;Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    invoke-virtual {v0}, Lcom/aadhk/printer/f;->start()V

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    sget-object v1, Lcom/aadhk/printer/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-static {v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    iget-object v1, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-static {v1}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 211
    :cond_0
    :goto_2
    return-void

    .line 168
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 178
    :try_start_3
    iget-object v3, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "createRfcommSocket"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    invoke-static {v3, v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;Landroid/bluetooth/BluetoothSocket;)V

    .line 179
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-static {v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_1

    :catch_2
    move-exception v0

    .line 184
    :try_start_4
    iget-object v0, p0, Lcom/aadhk/printer/e;->a:Lcom/aadhk/printer/d;

    invoke-static {v0}, Lcom/aadhk/printer/d;->a(Lcom/aadhk/printer/d;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 187
    :catch_3
    move-exception v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 193
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 195
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 197
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 205
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
