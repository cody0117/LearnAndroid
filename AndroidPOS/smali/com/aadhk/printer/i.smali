.class public final Lcom/aadhk/printer/i;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/printer/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 19
    new-instance v1, Lcom/aadhk/printer/l;

    invoke-direct {v1, p0}, Lcom/aadhk/printer/l;-><init>(Landroid/content/Context;)V

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getUsbName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/printer/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v1}, Lcom/aadhk/printer/l;->a()V

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v1}, Lcom/aadhk/printer/l;->a()V

    .line 24
    throw v0

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 26
    new-instance v1, Lcom/aadhk/printer/d;

    invoke-direct {v1}, Lcom/aadhk/printer/d;-><init>()V

    .line 28
    :try_start_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/printer/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    invoke-virtual {v1}, Lcom/aadhk/printer/d;->a()V

    goto :goto_0

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    invoke-virtual {v1}, Lcom/aadhk/printer/d;->a()V

    .line 31
    throw v0

    .line 33
    :cond_3
    new-instance v1, Lcom/aadhk/printer/k;

    invoke-direct {v1}, Lcom/aadhk/printer/k;-><init>()V

    .line 35
    :try_start_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPort()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/printer/k;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    :try_start_3
    invoke-virtual {v1}, Lcom/aadhk/printer/k;->a()V
    :try_end_3
    .catch Lcom/aadhk/printer/h; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/aadhk/printer/h;->printStackTrace()V

    goto :goto_0

    .line 36
    :catchall_2
    move-exception v0

    .line 38
    :try_start_4
    invoke-virtual {v1}, Lcom/aadhk/printer/k;->a()V
    :try_end_4
    .catch Lcom/aadhk/printer/h; {:try_start_4 .. :try_end_4} :catch_1

    .line 42
    :goto_1
    throw v0

    .line 40
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/aadhk/printer/h;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->isOpenDrawer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3, v1}, Lcom/aadhk/printer/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "print result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    if-nez v1, :cond_3

    .line 61
    new-instance v0, Lcom/aadhk/printer/h;

    const-string v1, "printer adapter server error"

    invoke-direct {v0, v1}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 65
    new-instance v1, Lcom/aadhk/printer/l;

    invoke-direct {v1, p0}, Lcom/aadhk/printer/l;-><init>(Landroid/content/Context;)V

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getUsbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/printer/l;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/aadhk/printer/b;->a(Landroid/graphics/Bitmap;)Lcom/aadhk/printer/a;

    move-result-object v2

    .line 69
    invoke-static {v2, p1}, Lcom/aadhk/printer/n;->a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B

    move-result-object v2

    .line 70
    :goto_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v0, v3, :cond_5

    .line 76
    invoke-virtual {v1}, Lcom/aadhk/printer/l;->a()V

    goto :goto_1

    .line 71
    :cond_5
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/aadhk/printer/l;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    new-instance v2, Lcom/aadhk/printer/h;

    const-string v3, "printer adapter error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {v1}, Lcom/aadhk/printer/l;->a()V

    .line 77
    throw v0

    .line 78
    :cond_6
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 81
    new-instance v1, Lcom/aadhk/printer/d;

    invoke-direct {v1}, Lcom/aadhk/printer/d;-><init>()V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=====>btName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :try_start_3
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/printer/d;->a(Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Lcom/aadhk/printer/b;->a(Landroid/graphics/Bitmap;)Lcom/aadhk/printer/a;

    move-result-object v2

    .line 86
    invoke-static {v2, p1}, Lcom/aadhk/printer/n;->a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B

    move-result-object v2

    .line 87
    :goto_3
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-lt v0, v3, :cond_7

    .line 93
    invoke-virtual {v1}, Lcom/aadhk/printer/d;->a()V

    goto/16 :goto_1

    .line 88
    :cond_7
    :try_start_4
    invoke-virtual {v1, v2}, Lcom/aadhk/printer/d;->a([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90
    :catch_1
    move-exception v0

    .line 91
    :try_start_5
    new-instance v2, Lcom/aadhk/printer/h;

    const-string v3, "printer bluetooth error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    invoke-virtual {v1}, Lcom/aadhk/printer/d;->a()V

    .line 94
    throw v0

    .line 96
    :cond_8
    new-instance v1, Lcom/aadhk/printer/k;

    invoke-direct {v1}, Lcom/aadhk/printer/k;-><init>()V

    .line 98
    :try_start_6
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/printer/k;->a(Ljava/lang/String;I)V

    .line 100
    invoke-static {p2}, Lcom/aadhk/printer/b;->a(Landroid/graphics/Bitmap;)Lcom/aadhk/printer/a;

    move-result-object v2

    .line 101
    invoke-static {v2, p1}, Lcom/aadhk/printer/n;->a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B

    move-result-object v2

    .line 103
    :goto_4
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPrintNum()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v3

    if-lt v0, v3, :cond_9

    .line 109
    invoke-virtual {v1}, Lcom/aadhk/printer/k;->a()V

    goto/16 :goto_1

    .line 104
    :cond_9
    :try_start_7
    invoke-virtual {v1, v2}, Lcom/aadhk/printer/k;->a([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 106
    :catch_2
    move-exception v0

    .line 107
    :try_start_8
    new-instance v2, Lcom/aadhk/printer/h;

    const-string v3, "printer adapter error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 108
    :catchall_2
    move-exception v0

    .line 109
    invoke-virtual {v1}, Lcom/aadhk/printer/k;->a()V

    .line 110
    throw v0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-static {p0}, Lcom/aadhk/printer/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/aadhk/printer/PrinterSetting;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printerSetting.getCommDrawer():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/printer/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    new-instance v1, Lcom/aadhk/printer/l;

    invoke-direct {v1, p0}, Lcom/aadhk/printer/l;-><init>(Landroid/content/Context;)V

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getUsbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/printer/l;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/aadhk/printer/l;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v1}, Lcom/aadhk/printer/l;->a()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    invoke-virtual {v1}, Lcom/aadhk/printer/l;->a()V

    .line 126
    throw v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/printer/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 130
    new-instance v1, Lcom/aadhk/printer/k;

    invoke-direct {v1}, Lcom/aadhk/printer/k;-><init>()V

    .line 132
    :try_start_1
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/printer/k;->a(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {v1, v0}, Lcom/aadhk/printer/k;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-virtual {v1}, Lcom/aadhk/printer/k;->a()V

    goto :goto_0

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    invoke-virtual {v1}, Lcom/aadhk/printer/k;->a()V

    .line 136
    throw v0

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/printer/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 139
    new-instance v1, Lcom/aadhk/printer/d;

    invoke-direct {v1}, Lcom/aadhk/printer/d;-><init>()V

    .line 141
    :try_start_2
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/printer/d;->a(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/aadhk/printer/d;->a([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 144
    invoke-virtual {v1}, Lcom/aadhk/printer/d;->a()V

    goto :goto_0

    .line 143
    :catchall_2
    move-exception v0

    .line 144
    invoke-virtual {v1}, Lcom/aadhk/printer/d;->a()V

    .line 145
    throw v0

    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aadhk/printer/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "print result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/aadhk/printer/h;

    const-string v1, "printer adapter error"

    invoke-direct {v0, v1}, Lcom/aadhk/printer/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method
