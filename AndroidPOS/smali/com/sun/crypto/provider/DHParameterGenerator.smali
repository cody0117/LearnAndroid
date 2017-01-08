.class public final Lcom/sun/crypto/provider/DHParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->c:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method protected final engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->c:Ljava/security/SecureRandom;

    :cond_1
    :try_start_0
    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v0

    iget v1, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    iget-object v2, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljava/security/AlgorithmParameterGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    const-class v1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    iget v1, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    if-lez v1, :cond_2

    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget v3, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    invoke-direct {v1, v2, v0, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    move-object v0, v1

    :goto_0
    const-string v1, "DH"

    const-string v2, "SunJCE"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v1

    :cond_2
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/spec/InvalidParameterSpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
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
    iput p1, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    iput-object p2, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->c:Ljava/security/SecureRandom;

    return-void
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Inappropriate parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/DHGenParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    rem-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Modulus size must be multiple of 64, and can only range from 512 to 1024 (inclusive)"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    if-gtz v0, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Exponent size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->b:I

    iget v1, p0, Lcom/sun/crypto/provider/DHParameterGenerator;->a:I

    if-lt v0, v1, :cond_4

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Exponent size must be less than modulus size"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method
