.class public final Lcom/aadhk/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;)I
    .locals 8
    .parameter

    .prologue
    .line 68
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 78
    const-wide v6, 0x9a7ec800L

    add-long/2addr v2, v6

    .line 80
    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x4194997000000000L

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 84
    monitor-exit v1

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_1
    new-instance v2, Lcom/aadhk/b/a;

    const-string v3, "prase date error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 217
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 218
    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_0
    monitor-exit v1

    return-object v0

    .line 219
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 220
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_1

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_1
    aget-byte v3, p0, v0

    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/aadhk/a/m;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/aadhk/b/c;

    invoke-direct {v0, p0}, Lcom/aadhk/b/c;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, Lcom/aadhk/a/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/aadhk/b/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/aadhk/a/m;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/aadhk/b/c;->a(Lcom/aadhk/a/m;)V

    .line 34
    invoke-virtual {v0}, Lcom/aadhk/b/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v1

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 39
    const-class v2, Lcom/aadhk/b/b;

    monitor-enter v2

    const/4 v0, 0x0

    .line 40
    :try_start_0
    new-instance v3, Lcom/aadhk/b/c;

    invoke-direct {v3, p0}, Lcom/aadhk/b/c;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v3, p1}, Lcom/aadhk/b/c;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    const/4 v1, 0x3

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 47
    invoke-virtual {v3}, Lcom/aadhk/b/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v1, :cond_1

    :try_start_1
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    invoke-static {p0, p1}, Lcom/aadhk/b/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/aadhk/b/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 61
    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    .line 56
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lcom/aadhk/b/a;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 89
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v2, Lcom/aadhk/b/c;

    invoke-direct {v2, p0}, Lcom/aadhk/b/c;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v2}, Lcom/aadhk/b/c;->b()Landroid/database/Cursor;

    move-result-object v3

    .line 92
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v2}, Lcom/aadhk/b/c;->a()V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 117
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    const/4 v0, 0x0

    .line 126
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 127
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "androidId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    if-nez v0, :cond_1

    .line 132
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 133
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    const-string v2, "utf8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    monitor-exit v1

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    :try_start_1
    new-instance v2, Lcom/aadhk/b/a;

    const-string v3, "androidId toBytes error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 177
    const-class v0, Lcom/aadhk/b/b;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/aadhk/b/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 179
    monitor-exit v0

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 206
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 209
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/b/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    monitor-exit v1

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    new-instance v2, Lcom/aadhk/b/a;

    const-string v3, "encrypt message error"

    invoke-direct {v2, v3, v0}, Lcom/aadhk/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 188
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/aadhk/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 192
    const-class v1, Lcom/aadhk/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aadhk/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
