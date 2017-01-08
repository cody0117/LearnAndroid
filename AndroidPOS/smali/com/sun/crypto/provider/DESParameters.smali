.class public final Lcom/sun/crypto/provider/DESParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "ProGuard"


# instance fields
.field private a:Lcom/sun/crypto/provider/SunJCE_t;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_t;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_t;-><init>(I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    return-void
.end method


# virtual methods
.method protected final engineGetEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_t;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_t;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_t;->a(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_t;->a(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected final engineInit([B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_t;->a([B)V

    return-void
.end method

.method protected final engineInit([BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/SunJCE_t;->a([BLjava/lang/String;)V

    return-void
.end method

.method protected final engineToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESParameters;->a:Lcom/sun/crypto/provider/SunJCE_t;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_t;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
