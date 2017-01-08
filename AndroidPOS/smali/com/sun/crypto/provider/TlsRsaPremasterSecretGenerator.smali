.class public final Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# static fields
.field private static final MSG:Ljava/lang/String; = "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private spec:Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    iget-object v0, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    :cond_1
    const/16 v0, 0x30

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-virtual {v2}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->getMajorVersion()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-virtual {v2}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->getMinorVersion()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TlsRsaPremasterSecret"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    instance-of v0, p1, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    iput-object p1, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    iput-object p2, p0, Lcom/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
