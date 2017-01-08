.class public final Lcom/aadhk/printer/n;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Lcom/aadhk/printer/a;Lcom/aadhk/printer/PrinterSetting;)[B
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->a()Ljava/util/BitSet;

    move-result-object v7

    .line 149
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 150
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 159
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/printer/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/printer/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/printer/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/printer/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
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

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    sget-object v0, Lcom/aadhk/printer/g;->k:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 191
    const/4 v0, 0x0

    move v2, v0

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->b()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 224
    sget-object v0, Lcom/aadhk/printer/g;->b:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 225
    sget-object v0, Lcom/aadhk/printer/g;->b:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    sget-object v0, Lcom/aadhk/printer/g;->b:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    sget-object v0, Lcom/aadhk/printer/g;->l:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 230
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 233
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->isEnableBeep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 237
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/aadhk/printer/PrinterSetting;->isOpenDrawer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 243
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 244
    return-object v0

    .line 200
    :cond_3
    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 221
    add-int/lit8 v0, v2, 0x18

    .line 222
    sget-object v1, Lcom/aadhk/printer/g;->b:[B

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v2, v0

    goto :goto_0

    .line 203
    :cond_4
    const/4 v1, 0x0

    move v5, v1

    :goto_2
    const/4 v1, 0x3

    if-lt v5, v1, :cond_5

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_5
    const/4 v3, 0x0

    .line 206
    const/4 v1, 0x0

    move v4, v3

    move v3, v1

    :goto_3
    const/16 v1, 0x8

    if-lt v3, v1, :cond_6

    .line 215
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 207
    :cond_6
    div-int/lit8 v1, v2, 0x8

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    .line 208
    invoke-virtual {p0}, Lcom/aadhk/printer/a;->c()I

    move-result v12

    mul-int/2addr v1, v12

    add-int v12, v1, v0

    .line 209
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v7}, Ljava/util/BitSet;->length()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 211
    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 213
    :cond_7
    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    rsub-int/lit8 v12, v3, 0x7

    shl-int/2addr v1, v12

    int-to-byte v1, v1

    or-int/2addr v1, v4

    int-to-byte v4, v1

    .line 206
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 213
    :cond_8
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-static {p0}, Lcom/aadhk/printer/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 24
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, ""

    .line 26
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .line 28
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
