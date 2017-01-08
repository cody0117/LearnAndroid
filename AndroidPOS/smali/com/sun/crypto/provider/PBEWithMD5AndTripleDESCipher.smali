.class public final Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# instance fields
.field private a:Lcom/sun/crypto/provider/SunJCE_ab;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The SunJCE provider may have been tampered."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sun/crypto/provider/SunJCE_ab;

    const-string v1, "DESede"

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_ab;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    return-void
.end method


# virtual methods
.method protected final engineDoFinal([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_ab;->b([BII[BI)I

    move-result v0

    return v0
.end method

.method protected final engineDoFinal([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_ab;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_ab;->a()I

    move-result v0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_ab;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    const/16 v0, 0xa8

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_ab;->a(I)I

    move-result v0

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_ab;->c()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_ab;->a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/sun/crypto/provider/SunJCE_ab;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "requires PBE parameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_ab;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "CBC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid cipher mode: "

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
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "PKCS5Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid padding scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_ab;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_ab;->a([BII[BI)I

    move-result v0

    return v0
.end method

.method protected final engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_ab;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->a:Lcom/sun/crypto/provider/SunJCE_ab;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_ab;->a(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
