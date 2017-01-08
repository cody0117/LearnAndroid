.class public final Lcom/sun/crypto/provider/DESedeWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# static fields
.field private static final a:[B


# instance fields
.field private b:Lcom/sun/crypto/provider/SunJCE_h;

.field private c:[B

.field private d:Ljava/security/Key;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/crypto/provider/DESedeWrapCipher;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0x4at
        0xddt
        0xa2t
        0x2ct
        0x79t
        0xe8t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_k;

    new-instance v1, Lcom/sun/crypto/provider/SunJCE_y;

    invoke-direct {v1}, Lcom/sun/crypto/provider/SunJCE_y;-><init>()V

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_k;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    return-void
.end method

.method private static final a([B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/crypto/provider/DESedeWrapCipher;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static final a([BII)[B
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SHA1 message digest not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const/16 v0, 0x8

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 4

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

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
    const/16 v0, 0x70

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x10

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, p1, 0x10

    goto :goto_0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "SunJCE"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AlgorithmParameters implementation in SunJCE provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find SunJCE provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IvParameterSpec not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Lcom/sun/crypto/provider/DESedeParameters;

    invoke-direct {v0}, Lcom/sun/crypto/provider/DESedeParameters;-><init>()V

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/DESedeParameters;->engineInit([B)V

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/DESedeParameters;->engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/crypto/provider/DESedeWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Wrong parameter type: IV expected"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/crypto/provider/DESedeWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Parameters required"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    if-nez p3, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    if-nez p4, :cond_0

    sget-object p4, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    :goto_1
    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    iget-boolean v2, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sun/crypto/provider/SunJCE_h;->a(ZLjava/lang/String;[B[B)V

    iput-object p2, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    return-void

    :cond_1
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_2

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong parameter type: IV expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No parameter accepted for unwrapping keys"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    sget-object v0, Lcom/sun/crypto/provider/DESedeWrapCipher;->a:[B

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This cipher can only be used for key wrapping and unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CBC"

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
    .locals 9

    const/4 v2, 0x0

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key is empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->b([BII[BI)V

    move v0, v2

    :goto_0
    array-length v1, v4

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    aget-byte v1, v4, v0

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, v4, v3

    aput-byte v3, v4, v0

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aput-byte v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/crypto/provider/DESedeWrapCipher;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v1, v1

    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    iget-object v6, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/sun/crypto/provider/SunJCE_h;->a(ZLjava/lang/String;[B[B)V

    iget-object v3, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v5, v0

    array-length v0, v4

    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v1, v1

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v8, v0

    move-object v7, v4

    invoke-virtual/range {v3 .. v8}, Lcom/sun/crypto/provider/SunJCE_h;->b([BII[BI)V

    array-length v0, v4

    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x8

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v0, v0

    invoke-static {v4, v0, v1}, Lcom/sun/crypto/provider/DESedeWrapCipher;->a([BII)[B

    move-result-object v3

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v0, v0

    add-int v5, v0, v1

    move v0, v2

    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_3

    add-int v6, v5, v0

    aget-byte v6, v4, v6

    aget-byte v7, v3, v0

    if-eq v6, v7, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Checksum comparison failed"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    iget-boolean v3, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    iget-object v5, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v6}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    sget-object v7, Lcom/sun/crypto/provider/DESedeWrapCipher;->a:[B

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/sun/crypto/provider/SunJCE_h;->a(ZLjava/lang/String;[B[B)V

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v1, v1

    array-length v3, v0

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p2, p3}, Lcom/sun/crypto/provider/SunJCE_s;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
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
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot get an encoding of the key to be wrapped"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v3}, Lcom/sun/crypto/provider/DESedeWrapCipher;->a([B)[B

    move-result-object v4

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v0, v0

    array-length v1, v3

    add-int/2addr v0, v1

    array-length v1, v4

    add-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v0, v0

    array-length v2, v3

    invoke-static {v3, v6, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v0, v0

    array-length v2, v3

    add-int/2addr v0, v2

    array-length v2, v4

    invoke-static {v4, v6, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    iget-object v2, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v2, v2

    array-length v3, v3

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v5, v4

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->a([BII[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    iget-object v2, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    array-length v2, v2

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v6

    :goto_0
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2

    aget-byte v2, v1, v0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, v1, v3

    aput-byte v3, v1, v0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    sget-object v5, Lcom/sun/crypto/provider/DESedeWrapCipher;->a:[B

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sun/crypto/provider/SunJCE_h;->a(ZLjava/lang/String;[B[B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    array-length v3, v1

    move v2, v6

    move-object v4, v1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->a([BII[BI)V

    :try_start_1
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->b:Lcom/sun/crypto/provider/SunJCE_h;

    iget-boolean v2, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->e:Z

    iget-object v3, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->d:Ljava/security/Key;

    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sun/crypto/provider/DESedeWrapCipher;->c:[B

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sun/crypto/provider/SunJCE_h;->a(ZLjava/lang/String;[B[B)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal cipher key is corrupted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal cipher key is corrupted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
