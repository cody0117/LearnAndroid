.class final Lcom/sun/crypto/provider/SunJCE_ab;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/sun/crypto/provider/SunJCE_f;

.field private b:Ljava/security/MessageDigest;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    const/16 v0, 0xa

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->f:I

    iput-object p1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    const-string v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_f;

    new-instance v1, Lcom/sun/crypto/provider/SunJCE_w;

    invoke-direct {v1}, Lcom/sun/crypto/provider/SunJCE_w;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/SunJCE_f;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    const-string v1, "CBC"

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    const-string v1, "PKCS5Padding"

    invoke-virtual {v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/lang/String;)V

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->b:Ljava/security/MessageDigest;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_f;

    new-instance v1, Lcom/sun/crypto/provider/SunJCE_y;

    invoke-direct {v1}, Lcom/sun/crypto/provider/SunJCE_y;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/SunJCE_f;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Cipher implementation for PBEWithMD5And"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/security/Key;)[B
    .locals 9

    const/4 v6, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    const-string v2, "DES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v0, v5

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v1, v0, [B

    array-length v0, v5

    invoke-static {v5, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    array-length v2, v5

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    array-length v4, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_ab;->f:I

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_ab;->b:Ljava/security/MessageDigest;

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    const-string v2, "DESede"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_2
    if-ge v0, v6, :cond_3

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    add-int/lit8 v4, v0, 0x4

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-ne v0, v6, :cond_4

    move v0, v3

    :goto_3
    if-ge v0, v8, :cond_4

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    rsub-int/lit8 v6, v0, 0x3

    aget-byte v4, v4, v6

    aput-byte v4, v2, v0

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    aput-byte v1, v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0x20

    new-array v2, v0, [B

    move v4, v3

    :goto_4
    if-ge v4, v8, :cond_6

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, v4

    array-length v7, v0

    invoke-static {v1, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    move v0, v3

    :goto_5
    iget v6, p0, Lcom/sun/crypto/provider/SunJCE_ab;->f:I

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_ab;->b:Ljava/security/MessageDigest;

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    mul-int/lit8 v0, v4, 0x10

    array-length v6, v1

    invoke-static {v1, v3, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(I)I

    move-result v0

    return v0
.end method

.method final a([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

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
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/crypto/provider/SunJCE_ab;->b([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sun/crypto/provider/SunJCE_s;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key is not padded correctly"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key does not have the correct length"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/crypto/provider/SunJCE_ab;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong parameter type: PBE expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters missing"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "PBE"

    const/4 v5, 0x3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Missing password"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p3, :cond_5

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_4
    invoke-direct {p0, p2}, Lcom/sun/crypto/provider/SunJCE_ab;->b(Ljava/security/Key;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    invoke-direct {v2, v0, v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :cond_5
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_6

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong parameter type: PBE expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    array-length v0, v0

    if-eq v0, v6, :cond_7

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Salt must be 8 bytes long"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->f:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->f:I

    if-gtz v0, :cond_4

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IterationCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/security/Key;)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Cannot get an encoding of the key to be wrapped"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sun/crypto/provider/SunJCE_ab;->b([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method final a([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method final b([BII[BI)I
    .locals 6

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

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
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SunJCE_f;->b(Ljava/lang/String;)V

    return-void
.end method

.method final b()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_f;->a()[B

    move-result-object v0

    return-object v0
.end method

.method final b([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->a:Lcom/sun/crypto/provider/SunJCE_f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    sget-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->e:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_ab;->f:I

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "PBEWithMD5And"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ab;->d:Ljava/lang/String;

    const-string v3, "DES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DES"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SunJCE"

    invoke-static {v0, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "TripleDES"
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SunJCE called, but not configured"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SunJCE called, but not configured"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PBEParameterSpec not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
