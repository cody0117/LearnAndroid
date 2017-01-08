.class public final Lcom/sun/crypto/provider/RC2Cipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# instance fields
.field private final a:Lcom/sun/crypto/provider/SunJCE_f;

.field private final b:Lcom/sun/crypto/provider/SunJCE_r;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_r;

    invoke-direct {v0}, Lcom/sun/crypto/provider/SunJCE_r;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->b:Lcom/sun/crypto/provider/SunJCE_r;

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_f;

    iget-object v1, p0, Lcom/sun/crypto/provider/RC2Cipher;->b:Lcom/sun/crypto/provider/SunJCE_r;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/SunJCE_f;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    return-void
.end method


# virtual methods
.method protected final engineDoFinal([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII[BI)I

    move-result v0

    return v0
.end method

.method protected final engineDoFinal([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_f;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 3

    invoke-static {p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/security/Key;)[B

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v2}, Lcom/sun/crypto/provider/SunJCE_r;->a(Ljava/lang/String;I)V

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(I)I

    move-result v0

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->c(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/crypto/provider/RC2Cipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong parameter type: RC2 expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->b:Lcom/sun/crypto/provider/SunJCE_r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_r;->a(I)V

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->b:Lcom/sun/crypto/provider/SunJCE_r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_r;->a(I)V

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    if-eqz p3, :cond_0

    instance-of v0, p3, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/crypto/provider/RC2Cipher;->b:Lcom/sun/crypto/provider/SunJCE_r;

    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/crypto/provider/SunJCE_r;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->b:Lcom/sun/crypto/provider/SunJCE_r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_r;->a(I)V

    goto :goto_0
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII[BI)I

    move-result v0

    return v0
.end method

.method protected final engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Cipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
