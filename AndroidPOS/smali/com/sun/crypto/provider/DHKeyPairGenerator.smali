.class public final Lcom/sun/crypto/provider/DHKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "ProGuard"


# instance fields
.field private a:Ljavax/crypto/spec/DHParameterSpec;

.field private b:I

.field private c:I

.field private d:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/16 v0, 0x400

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/crypto/provider/DHKeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public final generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->d:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->d:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    iget-object v1, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->d:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lsun/security/provider/ParameterCache;->getDHParameterSpec(ILjava/security/SecureRandom;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    if-gtz v2, :cond_2

    const/16 v2, 0x180

    iget v3, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    shr-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    iget v2, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    iget v3, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    :cond_2
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_3
    new-instance v3, Ljava/math/BigInteger;

    iget v4, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    iget-object v5, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->d:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_3

    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v4, Lcom/sun/crypto/provider/DHPublicKey;

    iget v5, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    invoke-direct {v4, v2, v0, v1, v5}, Lcom/sun/crypto/provider/DHPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v2, Lcom/sun/crypto/provider/DHPrivateKey;

    iget v5, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/crypto/provider/DHPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, v4, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final initialize(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Keysize must be multiple of 64, and can only range from 512 to 1024 (inclusive)"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    iput-object p2, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public final initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Inappropriate parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    iput-object p1, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    iget v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    rem-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Prime size must be multiple of 64, and can only range from 512 to 1024 (inclusive)"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->a:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    iget v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->c:I

    iget v1, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->b:I

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Exponent size must not be larger than modulus size"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p0, Lcom/sun/crypto/provider/DHKeyPairGenerator;->d:Ljava/security/SecureRandom;

    return-void
.end method
