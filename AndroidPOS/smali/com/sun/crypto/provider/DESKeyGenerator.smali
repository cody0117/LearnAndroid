.class public final Lcom/sun/crypto/provider/DESKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# instance fields
.field private a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/DESKeyGenerator;->a:Ljava/security/SecureRandom;

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

.method static a([BI)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xfe

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v1

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0
.end method


# virtual methods
.method protected final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/DESKeyGenerator;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/sun/crypto/provider/DESKeyGenerator;->a:Ljava/security/SecureRandom;

    :cond_0
    const/16 v0, 0x8

    :try_start_0
    new-array v2, v0, [B

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/DESKeyGenerator;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljavax/crypto/spec/DESKeySpec;->isWeak([BI)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/crypto/provider/DESKey;

    invoke-direct {v0, v2}, Lcom/sun/crypto/provider/DESKey;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Wrong keysize: must be equal to 56"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/crypto/provider/DESKeyGenerator;->engineInit(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/crypto/provider/DESKeyGenerator;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "DES key generation does not take any parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
