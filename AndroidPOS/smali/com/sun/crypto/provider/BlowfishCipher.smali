.class public final Lcom/sun/crypto/provider/BlowfishCipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# instance fields
.field private a:Lcom/sun/crypto/provider/SunJCE_f;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_f;

    new-instance v1, Lcom/sun/crypto/provider/SunJCE_u;

    invoke-direct {v1}, Lcom/sun/crypto/provider/SunJCE_u;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/SunJCE_f;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    return-void
.end method


# virtual methods
.method protected final engineDoFinal([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

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

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

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

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_f;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(I)I

    move-result v0

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    const-string v1, "Blowfish"

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->c(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

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

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/BlowfishCipher;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
