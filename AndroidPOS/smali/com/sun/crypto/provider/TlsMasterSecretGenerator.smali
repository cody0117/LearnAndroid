.class public final Lcom/sun/crypto/provider/TlsMasterSecretGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# static fields
.field private static final MSG:Ljava/lang/String; = "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"


# instance fields
.field private protocolVersion:I

.field private spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;


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
    .locals 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsMasterSecretGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->getPremasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TlsRsaPremasterSecret"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-byte v0, v4, v1

    and-int/lit16 v2, v0, 0xff

    const/4 v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    move v3, v2

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->getClientRandom()[B

    move-result-object v5

    iget-object v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->getServerRandom()[B

    move-result-object v6

    iget v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v7, 0x301

    if-lt v0, v7, :cond_3

    invoke-static {v5, v6}, Lcom/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v0

    sget-object v1, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_MASTER_SECRET:[B

    const/16 v5, 0x30

    invoke-static {v4, v1, v0, v5}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BI)[B

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;

    invoke-direct {v1, v0, v3, v2}, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;-><init>([BII)V

    return-object v1

    :cond_2
    move v2, v0

    move v3, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    new-array v0, v0, [B

    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const-string v8, "SHA"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    const/16 v9, 0x14

    new-array v9, v9, [B

    :goto_1
    const/4 v10, 0x3

    if-ge v1, v10, :cond_1

    sget-object v10, Lcom/sun/crypto/provider/TlsPrfGenerator;->SSL3_CONST:[[B

    aget-object v10, v10, v1

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->update([B)V

    const/4 v10, 0x0

    const/16 v11, 0x14

    invoke-virtual {v8, v9, v10, v11}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-virtual {v7, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v9}, Ljava/security/MessageDigest;->update([B)V

    shl-int/lit8 v10, v1, 0x4

    const/16 v11, 0x10

    invoke-virtual {v7, v0, v10, v11}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    instance-of v0, p1, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    iput-object p1, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    const-string v0, "RAW"

    iget-object v1, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v1}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->getPremasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Key format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->getMajorVersion()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v1}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->getMinorVersion()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    iget v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v1, 0x300

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v1, 0x302

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only SSL 3.0, TLS 1.0, and TLS 1.1 supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
