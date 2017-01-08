.class public final Lcom/sun/crypto/provider/DESedeKeyGenerator;
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

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->a:Ljava/security/SecureRandom;

    const/16 v0, 0xa8

    iput v0, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->b:I

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
    .locals 6

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->a:Ljava/security/SecureRandom;

    :cond_0
    const/16 v0, 0x18

    new-array v0, v0, [B

    iget v1, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->b:I

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v3}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    invoke-static {v0, v4}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    invoke-static {v0, v5}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    :goto_0
    :try_start_0
    new-instance v1, Lcom/sun/crypto/provider/DESedeKey;

    invoke-direct {v1, v0}, Lcom/sun/crypto/provider/DESedeKey;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-object v1

    :cond_1
    new-array v1, v5, [B

    iget-object v2, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1, v3}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    invoke-static {v1, v4}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Wrong keysize: must be equal to 112 or 168"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->b:I

    invoke-virtual {p0, p2}, Lcom/sun/crypto/provider/DESedeKeyGenerator;->engineInit(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/crypto/provider/DESedeKeyGenerator;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Triple DES key generation does not take any parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
