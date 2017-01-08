.class public final Lcom/sun/crypto/provider/AESKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# instance fields
.field private a:Ljava/security/SecureRandom;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->a:Ljava/security/SecureRandom;

    const/16 v0, 0x10

    iput v0, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->b:I

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
.method protected final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    iget-object v0, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->a:Ljava/security/SecureRandom;

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE_c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Wrong keysize: must be equal to 128, 192 or 256"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->b:I

    invoke-virtual {p0, p2}, Lcom/sun/crypto/provider/AESKeyGenerator;->engineInit(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/crypto/provider/AESKeyGenerator;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "AES key generation does not take any parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
