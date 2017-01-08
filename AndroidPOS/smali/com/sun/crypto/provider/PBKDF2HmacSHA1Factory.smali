.class public final Lcom/sun/crypto/provider/PBKDF2HmacSHA1Factory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

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
.method protected final engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid key spec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_ae;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, v1}, Lcom/sun/crypto/provider/SunJCE_ae;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5

    instance-of v0, p1, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-class v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/interfaces/PBEKey;

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getPassword()[C

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v3

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    move-result-object v4

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid key spec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid key format/algorithm"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 5

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sun/crypto/provider/SunJCE_ae;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/crypto/interfaces/PBEKey;

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getPassword()[C

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v3

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    move-result-object v4

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    new-instance p1, Lcom/sun/crypto/provider/SunJCE_ae;

    const-string v1, "HmacSHA1"

    invoke-direct {p1, v0, v1}, Lcom/sun/crypto/provider/SunJCE_ae;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Invalid key component(s)"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid key format/algorithm"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
