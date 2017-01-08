.class final Lcom/sun/crypto/provider/PKCS12PBECipherCore;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final g:I = 0x14

.field private static final h:I = 0x400

.field static final i:I = 0x1

.field static final j:I = 0x2

.field static final k:I = 0x3


# instance fields
.field private a:Lcom/sun/crypto/provider/SunJCE_f;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    iput-object p1, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_y;

    invoke-direct {v0}, Lcom/sun/crypto/provider/SunJCE_y;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_e;->a()I

    move-result v1

    iput v1, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b:I

    new-instance v1, Lcom/sun/crypto/provider/SunJCE_f;

    iget v2, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b:I

    invoke-direct {v1, v0, v2}, Lcom/sun/crypto/provider/SunJCE_f;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v1, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    const-string v1, "CBC"

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    const-string v1, "PKCS5Padding"

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput p2, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->c:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_r;

    invoke-direct {v0}, Lcom/sun/crypto/provider/SunJCE_r;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Cipher implementation for PBEWithSHA1And"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(II)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method private static a([B[BII)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    div-int v3, p3, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    add-int v4, v2, p2

    array-length v5, p0

    invoke-static {p0, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    array-length v4, p0

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int v0, v2, p2

    sub-int v2, p3, v2

    invoke-static {p0, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static a([C[BIII)[B
    .locals 14

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, 0x2

    :cond_0
    new-array v3, v1, [B

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget-char v4, p0, v2

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v4, v1, 0x1

    aget-char v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    move/from16 v0, p3

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x14

    const/16 v1, 0x40

    new-array v6, v1, [B

    array-length v1, p1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(II)I

    move-result v1

    array-length v2, v3

    const/16 v4, 0x40

    invoke-static {v2, v4}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(II)I

    move-result v2

    add-int v4, v1, v2

    new-array v7, v4, [B

    move/from16 v0, p3

    new-array v8, v0, [B

    move/from16 v0, p4

    int-to-byte v4, v0

    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v4, 0x0

    invoke-static {p1, v7, v4, v1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([B[BII)V

    invoke-static {v3, v7, v1, v2}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([B[BII)V

    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    const/16 v1, 0x40

    new-array v10, v1, [B

    const/16 v1, 0x40

    new-array v2, v1, [B

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v2

    :goto_1
    invoke-virtual {v9, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9, v7}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v2, 0x1

    :goto_2
    move/from16 v0, p2

    if-ge v2, v0, :cond_2

    invoke-virtual {v9, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    mul-int/lit8 v11, v4, 0x14

    const/16 v12, 0x14

    move/from16 v0, p3

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v3, v2, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x1

    if-eq v2, v5, :cond_7

    const/4 v2, 0x0

    array-length v11, v10

    invoke-static {v3, v10, v2, v11}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([B[BII)V

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v2, 0x0

    :goto_3
    array-length v11, v7

    if-ge v2, v11, :cond_6

    array-length v11, v1

    const/16 v12, 0x40

    if-eq v11, v12, :cond_3

    const/16 v1, 0x40

    new-array v1, v1, [B

    :cond_3
    const/4 v11, 0x0

    const/16 v12, 0x40

    invoke-static {v7, v2, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v11, Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v11, v1

    add-int/lit8 v11, v11, -0x40

    if-ltz v11, :cond_5

    const/16 v12, 0x40

    invoke-static {v1, v11, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x40

    goto :goto_3

    :cond_5
    if-gez v11, :cond_4

    neg-int v12, v11

    add-int/2addr v12, v2

    const/4 v13, 0x0

    invoke-static {v7, v2, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 v12, 0x0

    neg-int v11, v11

    add-int/2addr v11, v2

    array-length v13, v1

    invoke-static {v1, v12, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "internal error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 p3, p3, -0x14

    move v4, v2

    goto/16 :goto_1

    :cond_7
    return-object v8
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b:I

    return v0
.end method

.method final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(I)I

    move-result v0

    return v0
.end method

.method final a(Ljava/security/Key;)I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->c:I

    return v0
.end method

.method final a([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII[BI)I

    move-result v0

    return v0
.end method

.method final a([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method final a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "requires PBE parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "requires PBE parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    iput v2, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    instance-of v0, p2, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v0, :cond_2

    check-cast p2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {p2}, Ljavax/crypto/interfaces/PBEKey;->getPassword()[C

    move-result-object v0

    invoke-interface {p2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    invoke-interface {p2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v3

    iput v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    :goto_0
    if-eq p1, v8, :cond_0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    :cond_0
    if-nez p3, :cond_7

    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    if-nez v3, :cond_7

    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters missing"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PBE"

    const/4 v5, 0x3

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
    array-length v0, v6

    new-array v3, v0, [C

    move v0, v2

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-byte v4, v6, v0

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "SecretKey of PBE type required"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p3, :cond_b

    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    if-nez v3, :cond_8

    const/16 v3, 0x14

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    if-eqz p4, :cond_a

    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    invoke-virtual {p4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_8
    :goto_2
    iget v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    if-nez v3, :cond_9

    const/16 v3, 0x400

    iput v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    array-length v3, v3

    if-ge v3, v7, :cond_10

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Salt must be at least 8 bytes long"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v3, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iget-object v4, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_2

    :cond_b
    instance-of v3, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v3, :cond_c

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBEParameterSpec type required"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    invoke-virtual {p3}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Inconsistent value of salt between key and params"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p3}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    :cond_e
    iget v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    invoke-virtual {p3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    if-eq v3, v4, :cond_9

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Different iteration count between key and params"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    iput v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    goto :goto_3

    :cond_10
    iget v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    if-gtz v3, :cond_11

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IterationCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v3, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    iget v4, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    iget v5, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->c:I

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([C[BIII)[B

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    iget v4, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    invoke-static {v0, v1, v4, v7, v8}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([C[BIII)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0, v2, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, v3, v1, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "CBC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid cipher mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method final a([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method final b([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII[BI)I

    move-result v0

    return v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "PKCS5Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid padding scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method final b()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_f;->a()[B

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/security/Key;)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method final b([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    :cond_0
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->e:[B

    iget v2, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->f:I

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "PBEWithSHA1And"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;

    const-string v3, "RC2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RC2_40"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SunJCE"

    invoke-static {v0, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SunJCE provider is not configured properly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PBEParameterSpec not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
