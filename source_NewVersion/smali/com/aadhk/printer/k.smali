.class public final Lcom/aadhk/printer/k;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->a()Ljava/util/BitSet;

    move-result-object v7

    .line 27
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v0

    int-to-byte v0, v0

    .line 28
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 30
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/printer/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/printer/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/printer/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/printer/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    const/4 v3, 0x5

    new-array v11, v3, [B

    const/4 v3, 0x0

    const/16 v4, 0x1b

    aput-byte v4, v11, v3

    const/4 v3, 0x1

    const/16 v4, 0x2a

    aput-byte v4, v11, v3

    const/4 v3, 0x2

    const/16 v4, 0x21

    aput-byte v4, v11, v3

    const/4 v3, 0x3

    aput-byte v0, v11, v3

    const/4 v0, 0x4

    aput-byte v1, v11, v0

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 52
    sget-object v0, Lcom/aadhk/printer/d;->k:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 62
    const/4 v0, 0x0

    move v2, v0

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->b()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 99
    sget-object v0, Lcom/aadhk/printer/d;->b:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 100
    sget-object v0, Lcom/aadhk/printer/d;->b:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 101
    sget-object v0, Lcom/aadhk/printer/d;->b:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 104
    sget-object v0, Lcom/aadhk/printer/d;->l:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->isEnableBeep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 112
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->isOpenDrawer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 118
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    return-object v0

    .line 73
    :cond_3
    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 75
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 96
    add-int/lit8 v0, v2, 0x18

    .line 97
    sget-object v1, Lcom/aadhk/printer/d;->b:[B

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v2, v0

    goto :goto_0

    .line 77
    :cond_4
    const/4 v1, 0x0

    move v5, v1

    :goto_2
    const/4 v1, 0x3

    if-lt v5, v1, :cond_5

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_5
    const/4 v3, 0x0

    .line 80
    const/4 v1, 0x0

    move v4, v3

    move v3, v1

    :goto_3
    const/16 v1, 0x8

    if-lt v3, v1, :cond_6

    .line 89
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 81
    :cond_6
    div-int/lit8 v1, v2, 0x8

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    .line 82
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v12

    mul-int/2addr v1, v12

    add-int v12, v1, v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v7}, Ljava/util/BitSet;->length()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 85
    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 87
    :cond_7
    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    rsub-int/lit8 v12, v3, 0x7

    shl-int/2addr v1, v12

    int-to-byte v1, v1

    or-int/2addr v1, v4

    int-to-byte v4, v1

    .line 80
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 87
    :cond_8
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-static {p0}, Lcom/aadhk/printer/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 15
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, ""

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    return-object v0

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
