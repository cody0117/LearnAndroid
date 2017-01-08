.class public final Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;
.super Ljavax/crypto/MacSpi;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final b:I = 0x40


# instance fields
.field private a:Lcom/sun/crypto/provider/HmacCore;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/HmacCore;

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/HmacCore;-><init>(Ljava/security/MessageDigest;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v1}, Lcom/sun/crypto/provider/HmacCore;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/crypto/provider/HmacCore;

    iput-object v1, v0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected final engineDoFinal()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->a()I

    move-result v0

    return v0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x0

    instance-of v0, p1, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getPassword()[C

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v0

    :goto_0
    if-nez p2, :cond_7

    if-nez v1, :cond_0

    const/16 v1, 0x14

    new-array v1, v1, [B

    sget-object v3, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x64

    :cond_1
    :goto_1
    array-length v3, v1

    const/16 v4, 0x8

    if-ge v3, v4, :cond_c

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Salt must be at least 8 bytes long"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "PBE"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Missing password"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v0, v7

    new-array v1, v0, [C

    move v0, v2

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_5

    aget-byte v3, v7, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "SecretKey of PBE type required"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    instance-of v3, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v3, :cond_8

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBEParameterSpec type required"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    check-cast p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Inconsistent value of salt between key and params"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p2}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v1

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {p2}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Different iteration count between key and params"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p2}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v0

    goto/16 :goto_1

    :cond_c
    if-gtz v0, :cond_d

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IterationCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v3, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v3}, Lcom/sun/crypto/provider/HmacCore;->a()I

    move-result v3

    invoke-static {v2, v1, v0, v3, v5}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([C[BIII)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, v1, v6}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected final engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->c()V

    return-void
.end method

.method protected final engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(B)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacPKCS12PBESHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/HmacCore;->a([BII)V

    return-void
.end method
