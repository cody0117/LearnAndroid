.class public final Lcom/aadhk/printer/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/printer/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 18
    new-instance v1, Lcom/aadhk/printer/i;

    invoke-direct {v1, p0}, Lcom/aadhk/printer/i;-><init>(Landroid/content/Context;)V

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getUsbName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/printer/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v1}, Lcom/aadhk/printer/i;->a()V

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {v1}, Lcom/aadhk/printer/i;->a()V

    .line 23
    throw v0

    .line 26
    :cond_2
    new-instance v1, Lcom/aadhk/printer/h;

    invoke-direct {v1}, Lcom/aadhk/printer/h;-><init>()V

    .line 28
    :try_start_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPort()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/printer/h;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    invoke-virtual {v1}, Lcom/aadhk/printer/h;->a()V
    :try_end_2
    .catch Lcom/aadhk/printer/e; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/aadhk/printer/e;->printStackTrace()V

    goto :goto_0

    .line 29
    :catchall_1
    move-exception v0

    .line 31
    :try_start_3
    invoke-virtual {v1}, Lcom/aadhk/printer/h;->a()V
    :try_end_3
    .catch Lcom/aadhk/printer/e; {:try_start_3 .. :try_end_3} :catch_1

    .line 35
    :goto_1
    throw v0

    .line 33
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/aadhk/printer/e;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/aadhk/printer/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "print result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    if-nez v1, :cond_2

    .line 49
    new-instance v0, Lcom/aadhk/printer/e;

    const-string v1, "printer adapter server error"

    invoke-direct {v0, v1}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 53
    new-instance v1, Lcom/aadhk/printer/i;

    invoke-direct {v1, p0}, Lcom/aadhk/printer/i;-><init>(Landroid/content/Context;)V

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getUsbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/printer/i;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {p2}, Lcom/aadhk/printer/b;->a(Landroid/graphics/Bitmap;)Lcom/aadhk/printer/a;

    move-result-object v2

    .line 57
    invoke-static {v2, p1}, Lcom/aadhk/printer/k;->a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B

    move-result-object v2

    .line 58
    :goto_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v0, v3, :cond_4

    .line 64
    invoke-virtual {v1}, Lcom/aadhk/printer/i;->a()V

    goto :goto_1

    .line 59
    :cond_4
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/aadhk/printer/i;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    new-instance v2, Lcom/aadhk/printer/e;

    const-string v3, "printer adapter error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-virtual {v1}, Lcom/aadhk/printer/i;->a()V

    .line 65
    throw v0

    .line 67
    :cond_5
    new-instance v1, Lcom/aadhk/printer/h;

    invoke-direct {v1}, Lcom/aadhk/printer/h;-><init>()V

    .line 69
    :try_start_3
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/printer/h;->a(Ljava/lang/String;I)V

    .line 70
    invoke-static {p2}, Lcom/aadhk/printer/b;->a(Landroid/graphics/Bitmap;)Lcom/aadhk/printer/a;

    move-result-object v2

    .line 71
    invoke-static {v2, p1}, Lcom/aadhk/printer/k;->a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B

    move-result-object v2

    .line 72
    :goto_3
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-lt v0, v3, :cond_6

    .line 78
    invoke-virtual {v1}, Lcom/aadhk/printer/h;->a()V

    goto/16 :goto_1

    .line 73
    :cond_6
    :try_start_4
    invoke-virtual {v1, v2}, Lcom/aadhk/printer/h;->a([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 75
    :catch_1
    move-exception v0

    .line 76
    :try_start_5
    new-instance v2, Lcom/aadhk/printer/e;

    const-string v3, "printer adapter error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    invoke-virtual {v1}, Lcom/aadhk/printer/h;->a()V

    .line 79
    throw v0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-static {p0}, Lcom/aadhk/printer/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printerSetting.getCommDrawer():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/printer/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    new-instance v1, Lcom/aadhk/printer/i;

    invoke-direct {v1, p0}, Lcom/aadhk/printer/i;-><init>(Landroid/content/Context;)V

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getUsbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/printer/i;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Lcom/aadhk/printer/i;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1}, Lcom/aadhk/printer/i;->a()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    invoke-virtual {v1}, Lcom/aadhk/printer/i;->a()V

    .line 95
    throw v0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    if-nez v0, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/printer/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    new-instance v1, Lcom/aadhk/printer/h;

    invoke-direct {v1}, Lcom/aadhk/printer/h;-><init>()V

    .line 101
    :try_start_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/printer/h;->a(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/aadhk/printer/h;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-virtual {v1}, Lcom/aadhk/printer/h;->a()V

    goto :goto_0

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    invoke-virtual {v1}, Lcom/aadhk/printer/h;->a()V

    .line 105
    throw v0

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aadhk/printer/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "print result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/aadhk/printer/e;

    const-string v1, "printer adapter error"

    invoke-direct {v0, v1}, Lcom/aadhk/printer/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method
