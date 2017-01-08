.class public final Lcom/sun/crypto/provider/DHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "ProGuard"


# instance fields
.field private a:Z

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/math/BigInteger;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    iput-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->d:Ljava/math/BigInteger;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->e:Ljava/math/BigInteger;

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
    return-void
.end method


# virtual methods
.method protected final engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 4

    const/4 v3, 0x1

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Diffie-Hellman public key expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Incompatible parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Incompatible parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->e:Ljava/math/BigInteger;

    iput-boolean v3, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/sun/crypto/provider/DHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    new-instance v0, Lcom/sun/crypto/provider/DHPublicKey;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    invoke-direct {v0, v2, v1, v3}, Lcom/sun/crypto/provider/DHPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final engineGenerateSecret([BI)I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement has not been completed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "No buffer provided for shared secret"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->e:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-eq v2, v0, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Buffer too short for shared secret"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_3
    array-length v0, p1

    sub-int/2addr v0, p2

    array-length v2, v1

    if-ge v0, v2, :cond_4

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Buffer too short to hold shared secret"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v0, v1

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    array-length v0, v1

    goto :goto_0
.end method

.method protected final engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7

    const/16 v0, 0x38

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "null algorithm"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/crypto/provider/DHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v3

    const-string v1, "DES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/sun/crypto/provider/DESKey;

    invoke-direct {v0, v3}, Lcom/sun/crypto/provider/DESKey;-><init>([B)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "DESede"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TripleDES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Lcom/sun/crypto/provider/DESedeKey;

    invoke-direct {v0, v3}, Lcom/sun/crypto/provider/DESedeKey;-><init>([B)V

    goto :goto_0

    :cond_4
    const-string v1, "Blowfish"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, v3

    if-lt v1, v0, :cond_a

    :goto_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "Blowfish"

    invoke-direct {v1, v3, v5, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "AES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    array-length v2, v3

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_d;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v0, v1

    move v1, v2

    move v2, v6

    :goto_2
    if-nez v0, :cond_7

    if-ltz v2, :cond_7

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_d;->b:[I

    aget v4, v4, v2

    if-lt v1, v4, :cond_6

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_d;->b:[I

    aget v1, v0, v2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v0, v3, v5, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key material is too short"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "TlsPremasterSecret"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "TlsPremasterSecret"

    invoke-direct {v0, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported secret key algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method protected final engineGenerateSecret()[B
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement has not been completed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v4, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->e:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/crypto/provider/DHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->a:Z

    iput-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Diffie-Hellman parameters expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Diffie-Hellman private key expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_2

    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    check-cast p2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    :cond_2
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Incompatible parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Incompatible parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Missing parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->b:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyAgreement;->d:Ljava/math/BigInteger;

    return-void
.end method
