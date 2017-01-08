.class final Lcom/sun/crypto/provider/SunJCE_ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# static fields
.field static final serialVersionUID:J = -0x1f03d96eb7e7c6bdL


# instance fields
.field private a:[C

.field private b:[B

.field private c:I

.field private d:[B

.field private e:Ljavax/crypto/Mac;


# direct methods
.method constructor <init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE_ae;->a([C)[B

    move-result-object v0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->b:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->b:[B

    if-nez v1, :cond_1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Salt not found"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v1

    iput v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->c:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->c:I

    if-nez v1, :cond_2

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Iteration count not found"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->c:I

    if-gez v1, :cond_3

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Iteration count is negative"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key length not found"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez v1, :cond_5

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key length is negative"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_0
    new-instance v2, Lcom/sun/crypto/provider/SunJCE;

    invoke-direct {v2}, Lcom/sun/crypto/provider/SunJCE;-><init>()V

    invoke-static {p2, v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ae;->e:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ae;->e:Ljavax/crypto/Mac;

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_ae;->b:[B

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_ae;->c:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/sun/crypto/provider/SunJCE_ae;->a(Ljavax/crypto/Mac;[B[BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private static a(Ljavax/crypto/Mac;[B[BII)[B
    .locals 12

    div-int/lit8 v0, p4, 0x8

    new-array v3, v0, [B

    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v4

    add-int v1, v0, v4

    add-int/lit8 v1, v1, -0x1

    div-int v5, v1, v4

    add-int/lit8 v1, v5, -0x1

    mul-int/2addr v1, v4

    sub-int v6, v0, v1

    new-array v7, v4, [B

    new-array v8, v4, [B

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x4

    new-array v9, v0, [B

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-gt v2, v5, :cond_3

    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->update([B)V

    const/4 v0, 0x3

    int-to-byte v1, v2

    aput-byte v1, v9, v0

    const/4 v0, 0x2

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v9, v0

    const/4 v0, 0x1

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v9, v0

    const/4 v0, 0x0

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v9, v0

    invoke-virtual {p0, v9}, Ljavax/crypto/Mac;->update([B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Ljavax/crypto/Mac;->doFinal([BI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v10, v7

    invoke-static {v7, v0, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    if-gt v1, p3, :cond_1

    invoke-virtual {p0, v7}, Ljavax/crypto/Mac;->update([B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Ljavax/crypto/Mac;->doFinal([BI)V

    const/4 v0, 0x0

    :goto_2
    array-length v10, v7

    if-ge v0, v10, :cond_0

    aget-byte v10, v8, v0

    aget-byte v11, v7, v0

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_2

    const/4 v0, 0x0

    add-int/lit8 v1, v2, -0x1

    mul-int/2addr v1, v4

    invoke-static {v8, v0, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v1, v2, -0x1

    mul-int/2addr v1, v4

    invoke-static {v8, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error deriving PBKDF2 keys"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v3
.end method

.method private static a([C)[B
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v2
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_ae;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_ae;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_ae;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_ae;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    const/16 v1, 0x30

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PBKDF2With"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_ae;->e:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "RAW"

    return-object v0
.end method

.method public final getIterationCount()I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->c:I

    return v0
.end method

.method public final getPassword()[C
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->a:[C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public final getSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_ae;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_ae;->d:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_ae;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
