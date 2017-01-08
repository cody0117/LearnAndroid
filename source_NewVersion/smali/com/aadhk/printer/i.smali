.class public final Lcom/aadhk/printer/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:I


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/hardware/usb/UsbDeviceConnection;

.field private e:Landroid/hardware/usb/UsbEndpoint;

.field private f:Landroid/hardware/usb/UsbInterface;

.field private g:Landroid/hardware/usb/UsbManager;

.field private h:Z

.field private final i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x2710

    sput v0, Lcom/aadhk/printer/i;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/printer/i;->b:Z

    .line 43
    new-instance v0, Lcom/aadhk/printer/j;

    invoke-direct {v0, p0}, Lcom/aadhk/printer/j;-><init>(Lcom/aadhk/printer/i;)V

    iput-object v0, p0, Lcom/aadhk/printer/i;->i:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/aadhk/printer/i;->c:Landroid/content/Context;

    .line 40
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/aadhk/printer/i;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/printer/i;->h:Z

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iput-boolean v3, p0, Lcom/aadhk/printer/i;->h:Z

    .line 140
    iget-object v0, p0, Lcom/aadhk/printer/i;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.aadhk.restpos.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.aadhk.restpos.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/aadhk/printer/i;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/aadhk/printer/i;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    const/16 v1, 0xd

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 148
    :goto_0
    iget-boolean v1, p0, Lcom/aadhk/printer/i;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0

    .line 150
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========permissionGrantedFinish========"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/aadhk/printer/i;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v0, Lcom/aadhk/printer/e;

    const-string v1, "request usb printer permission timeout"

    invoke-direct {v0, v1}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Lcom/aadhk/printer/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request usb printer permission error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_2
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/printer/i;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/printer/i;->i:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 227
    iget-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/aadhk/printer/i;->f:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===mConnection.releaseInterface(mUsbInterface):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/printer/i;->f:Landroid/hardware/usb/UsbInterface;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/printer/i;->e:Landroid/hardware/usb/UsbEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=========openPrinter========"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v0, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 169
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/aadhk/printer/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open usb printer, usbInterface: deviceList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    .line 175
    if-nez v1, :cond_2

    .line 176
    invoke-direct {p0, v0}, Lcom/aadhk/printer/i;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    .line 178
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "=========device========"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "=========hasPermission========"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-lez v1, :cond_6

    move v3, v2

    .line 183
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 185
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "=========connection.claimInterface========"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "\u63a5\u53e3\u662f:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u7c7b\u662f:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/4 v7, 0x7

    if-ne v1, v7, :cond_3

    .line 190
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v7

    move v1, v2

    .line 191
    :goto_2
    if-lt v1, v7, :cond_4

    .line 183
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {v6, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u7aef\u70b9\u662f:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \u65b9\u5411\u662f:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \u7c7b\u578b\u662f:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "found usb printer \u63a5\u53e3\u662f:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7aef\u70b9\u662f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    iput-object v8, p0, Lcom/aadhk/printer/i;->e:Landroid/hardware/usb/UsbEndpoint;

    .line 198
    iput-object v6, p0, Lcom/aadhk/printer/i;->f:Landroid/hardware/usb/UsbInterface;

    .line 199
    iget-object v1, p0, Lcom/aadhk/printer/i;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    .line 200
    iget-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    iget-boolean v1, p0, Lcom/aadhk/printer/i;->b:Z

    invoke-virtual {v0, v6, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==connection isOpen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 191
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 208
    :cond_6
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "===hasPermission=false || device.getInterfaceCount() == 0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a([B)V
    .locals 9
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v0, 0x0

    .line 98
    monitor-enter p0

    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========print========"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    array-length v1, p1

    if-le v1, v3, :cond_4

    move v1, v0

    move v2, v0

    .line 102
    :goto_0
    int-to-double v3, v1

    array-length v0, p1

    int-to-double v5, v0

    const-wide/high16 v7, 0x4090

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-ltz v0, :cond_1

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    add-int/lit16 v0, v2, 0x400

    :try_start_1
    array-length v3, p1

    if-le v0, v3, :cond_2

    .line 105
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 106
    const/4 v3, 0x0

    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :goto_1
    iget-object v3, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/aadhk/printer/i;->e:Landroid/hardware/usb/UsbEndpoint;

    array-length v5, v0

    sget v6, Lcom/aadhk/printer/i;->a:I

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    .line 112
    if-gez v0, :cond_3

    .line 113
    new-instance v1, Lcom/aadhk/printer/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USB printer error - bulkTransfer result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_2
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 109
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 115
    :cond_3
    add-int/lit16 v2, v2, 0x400

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=========content.length========"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lcom/aadhk/printer/i;->d:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/aadhk/printer/i;->e:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    sget v3, Lcom/aadhk/printer/i;->a:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    .line 120
    if-gez v0, :cond_0

    .line 121
    new-instance v1, Lcom/aadhk/printer/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USB printer error - bulkTransfer result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
