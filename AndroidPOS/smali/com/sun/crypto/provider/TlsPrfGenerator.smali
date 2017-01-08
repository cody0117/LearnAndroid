.class public final Lcom/sun/crypto/provider/TlsPrfGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# static fields
.field private static final B0:[B = null

.field private static final HMAC_ipad:[B = null

.field private static final HMAC_opad:[B = null

.field static final LABEL_CLIENT_WRITE_KEY:[B = null

.field static final LABEL_IV_BLOCK:[B = null

.field static final LABEL_KEY_EXPANSION:[B = null

.field static final LABEL_MASTER_SECRET:[B = null

.field static final LABEL_SERVER_WRITE_KEY:[B = null

.field private static final MSG:Ljava/lang/String; = "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

.field static final SSL3_CONST:[[B


# instance fields
.field private spec:Lsun/security/internal/spec/TlsPrfParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x40

    const/16 v2, 0x10

    const/16 v1, 0xd

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->B0:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_MASTER_SECRET:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_KEY_EXPANSION:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_CLIENT_WRITE_KEY:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_SERVER_WRITE_KEY:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_IV_BLOCK:[B

    const/16 v0, 0x36

    invoke-static {v0, v3}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad:[B

    const/16 v0, 0x5c

    invoke-static {v0, v3}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad:[B

    invoke-static {}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genConst()[[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/TlsPrfGenerator;->SSL3_CONST:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x6dt
        0x61t
        0x73t
        0x74t
        0x65t
        0x72t
        0x20t
        0x73t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x6bt
        0x65t
        0x79t
        0x20t
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x73t
        0x69t
        0x6ft
        0x6et
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    :array_3
    .array-data 0x1
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    :array_4
    .array-data 0x1
        0x49t
        0x56t
        0x20t
        0x62t
        0x6ct
        0x6ft
        0x63t
        0x6bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static concat([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int v2, v0, v1

    new-array v2, v2, [B

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method static final doPRF([B[B[BI)[B
    .locals 6

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v0

    return-object v0
.end method

.method static final doPRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B
    .locals 9

    if-nez p0, :cond_0

    sget-object v2, Lcom/sun/crypto/provider/TlsPrfGenerator;->B0:[B

    :goto_0
    array-length v0, v2

    shr-int/lit8 v8, v0, 0x1

    array-length v0, v2

    and-int/lit8 v0, v0, 0x1

    add-int v4, v8, v0

    new-array v7, p3, [B

    const/16 v1, 0x10

    const/4 v3, 0x0

    move-object v0, p4

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/sun/crypto/provider/TlsPrfGenerator;->expand(Ljava/security/MessageDigest;I[BII[B[B[B)V

    const/16 v1, 0x14

    move-object v0, p5

    move v3, v8

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/sun/crypto/provider/TlsPrfGenerator;->expand(Ljava/security/MessageDigest;I[BII[B[B[B)V

    return-object v7

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method private static final expand(Ljava/security/MessageDigest;I[BII[B[B[B)V
    .locals 13

    sget-object v1, Lcom/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v2, Lcom/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, p4

    if-ge v3, v0, :cond_0

    aget-byte v4, v1, v3

    add-int v5, v3, p3

    aget-byte v5, p2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    aget-byte v4, v2, v3

    add-int v5, v3, p3

    aget-byte v5, p2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v8, p1, [B

    const/4 v5, 0x0

    move-object/from16 v0, p7

    array-length v4, v0

    const/4 v3, 0x0

    move v12, v3

    move-object v3, v5

    move v5, v4

    move v4, v12

    :goto_1
    if-lez v5, :cond_4

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    if-nez v3, :cond_2

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v8, v6, p1}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, v8}, Ljava/security/MessageDigest;->update([B)V

    if-nez v3, :cond_1

    new-array v3, p1, [B

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, p1}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, v3}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v6, 0x0

    invoke-virtual {p0, v8, v6, p1}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, v8}, Ljava/security/MessageDigest;->update([B)V

    const/4 v6, 0x0

    invoke-virtual {p0, v8, v6, p1}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_3

    add-int/lit8 v7, v4, 0x1

    aget-byte v10, p7, v4

    aget-byte v11, v8, v6

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p7, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v3}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    :cond_3
    sub-int/2addr v5, v9

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static genConst()[[B
    .locals 5

    const/16 v4, 0xa

    new-array v1, v4, [[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static genPad(BI)[B
    .locals 1

    new-array v0, p1, [B

    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([BB)V

    return-object v0
.end method


# virtual methods
.method protected final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-object v0, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsPrfGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsPrfParameterSpec;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v1}, Lsun/security/internal/spec/TlsPrfParameterSpec;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v2}, Lsun/security/internal/spec/TlsPrfParameterSpec;->getOutputLength()I

    move-result v2

    iget-object v3, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v3}, Lsun/security/internal/spec/TlsPrfParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BI)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TlsPrf"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Could not generate PRF"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Could not generate PRF"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    instance-of v0, p1, Lsun/security/internal/spec/TlsPrfParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/internal/spec/TlsPrfParameterSpec;

    iput-object p1, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    iget-object v0, p0, Lcom/sun/crypto/provider/TlsPrfGenerator;->spec:Lsun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsPrfParameterSpec;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "RAW"

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Key encoding format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
