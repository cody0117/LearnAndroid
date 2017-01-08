.class public final Lcom/sun/crypto/provider/AESWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# static fields
.field private static final a:[B = null

.field private static final b:I = 0x10


# instance fields
.field private c:Lcom/sun/crypto/provider/SunJCE_c;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_c;

    invoke-direct {v0}, Lcom/sun/crypto/provider/SunJCE_c;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->c:Lcom/sun/crypto/provider/SunJCE_c;

    return-void
.end method


# virtual methods
.method protected final engineDoFinal([BII[BI)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineDoFinal([BII)[B
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 4

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/sun/crypto/provider/SunJCE_c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid key length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->d:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x8

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, p1, 0x8

    goto :goto_0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "This cipher does not accept any parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/crypto/provider/AESWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->d:Z

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->c:Lcom/sun/crypto/provider/SunJCE_c;

    iget-boolean v1, p0, Lcom/sun/crypto/provider/AESWrapCipher;->d:Z

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/crypto/provider/SunJCE_c;->a(ZLjava/lang/String;[B)V

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->d:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This cipher can only be used for key wrapping and unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "This cipher does not accept any parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/crypto/provider/AESWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 12

    const/16 v3, 0x10

    const/16 v11, 0x8

    const/4 v1, 0x0

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key is empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    rem-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key has invalid key length"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v2, v0, -0x8

    new-array v6, v2, [B

    new-array v7, v3, [B

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->c:Lcom/sun/crypto/provider/SunJCE_c;

    invoke-virtual {v0, p1, v1, v7, v1}, Lcom/sun/crypto/provider/SunJCE_c;->b([BI[BI)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    aget-byte v2, v2, v0

    aget-byte v3, v7, v0

    if-eq v2, v3, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Integrity check failed"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v0, v0

    array-length v2, v6

    invoke-static {v7, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-static {v6, p2, p3}, Lcom/sun/crypto/provider/SunJCE_s;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v0, v0

    invoke-static {p1, v1, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v0, v0

    array-length v2, v6

    invoke-static {p1, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v6

    div-int/lit8 v4, v0, 0x8

    const/4 v0, 0x5

    move v5, v0

    :goto_1
    if-ltz v5, :cond_9

    move v3, v4

    :goto_2
    if-lez v3, :cond_7

    mul-int v0, v5, v4

    add-int v2, v3, v0

    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v0, v0, 0x8

    sget-object v8, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v8, v8

    invoke-static {v6, v0, v7, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    :goto_3
    if-eqz v2, :cond_6

    int-to-byte v8, v2

    sget-object v9, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v9, v9

    sub-int/2addr v9, v0

    aget-byte v10, v7, v9

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v7, v9

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->c:Lcom/sun/crypto/provider/SunJCE_c;

    invoke-virtual {v0, v7, v1, v7, v1}, Lcom/sun/crypto/provider/SunJCE_c;->b([BI[BI)V

    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v0, v0

    add-int/lit8 v2, v3, -0x1

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v7, v0, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    :cond_9
    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v0, v0

    if-ge v1, v0, :cond_4

    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    aget-byte v0, v0, v1

    aget-byte v2, v7, v1

    if-eq v0, v2, :cond_8

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Integrity check failed"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUpdate([BII)[B
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 13

    const/4 v1, 0x1

    const/16 v12, 0x8

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot get an encoding of the key to be wrapped"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    new-array v6, v2, [B

    array-length v2, v0

    if-ne v2, v12, :cond_3

    sget-object v1, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    sget-object v2, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v2, v2

    invoke-static {v1, v5, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v1, v1

    invoke-static {v0, v5, v6, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/AESWrapCipher;->c:Lcom/sun/crypto/provider/SunJCE_c;

    invoke-virtual {v0, v6, v5, v6, v5}, Lcom/sun/crypto/provider/SunJCE_c;->a([BI[BI)V

    :cond_2
    return-object v6

    :cond_3
    array-length v2, v0

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    const-string v1, "length of the to be wrapped key should be multiples of 8 bytes"

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v2, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    sget-object v3, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v3, v3

    invoke-static {v2, v5, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v2, v2

    array-length v3, v0

    invoke-static {v0, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    div-int/lit8 v7, v0, 0x8

    const/16 v0, 0x10

    new-array v8, v0, [B

    move v4, v5

    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_2

    move v3, v1

    :goto_1
    if-gt v3, v7, :cond_6

    mul-int v0, v4, v7

    add-int/2addr v0, v3

    sget-object v2, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v2, v2

    invoke-static {v6, v5, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v2, v3, 0x8

    sget-object v9, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v9, v9

    invoke-static {v6, v2, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sun/crypto/provider/AESWrapCipher;->c:Lcom/sun/crypto/provider/SunJCE_c;

    invoke-virtual {v2, v8, v5, v8, v5}, Lcom/sun/crypto/provider/SunJCE_c;->a([BI[BI)V

    move v2, v0

    move v0, v1

    :goto_2
    if-eqz v2, :cond_5

    int-to-byte v9, v2

    sget-object v10, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v10, v10

    sub-int/2addr v10, v0

    aget-byte v11, v8, v10

    xor-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v8, v10

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/sun/crypto/provider/AESWrapCipher;->a:[B

    array-length v0, v0

    invoke-static {v8, v5, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v0, v3, 0x8

    invoke-static {v8, v12, v6, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method
