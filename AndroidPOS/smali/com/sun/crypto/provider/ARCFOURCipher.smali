.class public final Lcom/sun/crypto/provider/ARCFOURCipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# instance fields
.field private final a:[I

.field private b:I

.field private c:I

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    return-void
.end method

.method private a(ILjava/security/Key;)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown opmode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lcom/sun/crypto/provider/ARCFOURCipher;->a(Ljava/security/Key;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->d:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->d:[B

    invoke-direct {p0, v0}, Lcom/sun/crypto/provider/ARCFOURCipher;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 8

    const/16 v7, 0x100

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v2, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_2

    iget-object v4, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    aget-byte v5, p1, v0

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    iget-object v5, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    iget-object v6, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    aput v4, v5, v2

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ne v0, v4, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    iput v1, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->c:I

    return-void
.end method

.method private a([BII[BI)V
    .locals 7

    iget v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->d:[B

    invoke-direct {p0, v0}, Lcom/sun/crypto/provider/ARCFOURCipher;->a([B)V

    :cond_0
    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    iget-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    iget v2, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    aget v3, v0, v2

    iget v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->c:I

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->c:I

    iget-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    iget v2, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->c:I

    aget v4, v0, v2

    iget-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    iget v2, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    aput v4, v0, v2

    iget-object v0, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    iget v2, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->c:I

    aput v3, v0, v2

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v5, p1, p2

    iget-object v6, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->a:[I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    move p5, v0

    move p3, v1

    move p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/security/Key;)[B
    .locals 4

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ARCFOUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not an ARCFOUR key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "RAW"

    invoke-interface {p0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key encoding format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    array-length v1, v0

    const/16 v2, 0x80

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key length must be between 40 and 1024 bit"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method protected final engineDoFinal([BII[BI)I
    .locals 2

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/ARCFOURCipher;->engineUpdate([BII[BI)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    return v0
.end method

.method protected final engineDoFinal([BII)[B
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/crypto/provider/ARCFOURCipher;->engineUpdate([BII)[B

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/crypto/provider/ARCFOURCipher;->b:I

    return-object v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    invoke-static {p1}, Lcom/sun/crypto/provider/ARCFOURCipher;->a(Ljava/security/Key;)[B

    move-result-object v0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 0

    return p1
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

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/crypto/provider/ARCFOURCipher;->a(ILjava/security/Key;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/crypto/provider/ARCFOURCipher;->a(ILjava/security/Key;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/crypto/provider/ARCFOURCipher;->a(ILjava/security/Key;)V

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

    const-string v2, "Unsupported mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Padding must be NoPadding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/crypto/provider/ARCFOURCipher;->engineDoFinal([BII)[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sun/crypto/provider/SunJCE_s;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 2

    array-length v0, p4

    sub-int/2addr v0, p5

    if-ge v0, p3, :cond_0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer too small"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sun/crypto/provider/ARCFOURCipher;->a([BII[BI)V

    return p3
.end method

.method protected final engineUpdate([BII)[B
    .locals 6

    new-array v4, p3, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/crypto/provider/ARCFOURCipher;->a([BII[BI)V

    return-object v4
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 3

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Could not obtain encoded key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/crypto/provider/ARCFOURCipher;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method
