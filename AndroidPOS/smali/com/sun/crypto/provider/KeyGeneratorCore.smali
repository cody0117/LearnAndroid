.class final Lcom/sun/crypto/provider/KeyGeneratorCore;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method final a()Ljavax/crypto/SecretKey;
    .locals 3

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->d:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->d:Ljava/security/SecureRandom;

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->c:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->d:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method final a(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key length must be at least 40 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->c:I

    iput-object p2, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->d:Ljava/security/SecureRandom;

    return-void
.end method

.method final a(Ljava/security/SecureRandom;)V
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->b:I

    iput v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->c:I

    iput-object p1, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->d:Ljava/security/SecureRandom;

    return-void
.end method

.method final a(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/crypto/provider/KeyGeneratorCore;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key generation does not take any parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
