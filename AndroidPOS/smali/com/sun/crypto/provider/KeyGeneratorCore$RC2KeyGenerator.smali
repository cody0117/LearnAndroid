.class public final Lcom/sun/crypto/provider/KeyGeneratorCore$RC2KeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# instance fields
.field private final a:Lcom/sun/crypto/provider/KeyGeneratorCore;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/KeyGeneratorCore;

    const-string v1, "RC2"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/KeyGeneratorCore;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$RC2KeyGenerator;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    return-void
.end method


# virtual methods
.method protected final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$RC2KeyGenerator;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    const/16 v0, 0x400

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key length for RC2 must be between 40 and 1024 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$RC2KeyGenerator;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(ILjava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$RC2KeyGenerator;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$RC2KeyGenerator;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
