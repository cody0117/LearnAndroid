.class public final Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "ProGuard"


# static fields
.field private static final MSG:Ljava/lang/String; = "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"


# instance fields
.field private protocolVersion:I

.field private spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private engineGenerateKey0()Ljavax/crypto/SecretKey;
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v3}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getClientRandom()[B

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getServerRandom()[B

    move-result-object v14

    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMacKeyLength()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getExpandedCipherKeyLength()I

    move-result v16

    if-eqz v16, :cond_1

    const/4 v4, 0x1

    move v9, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getCipherKeyLength()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getIvLength()I

    move-result v10

    add-int v5, v15, v17

    if-eqz v9, :cond_2

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v4, v5

    shl-int/lit8 v6, v4, 0x1

    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v5, 0x301

    if-lt v4, v5, :cond_3

    invoke-static {v14, v13}, Lcom/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v5

    sget-object v4, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_KEY_EXPANSION:[B

    invoke-static/range {v3 .. v8}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    move-object v4, v3

    :cond_0
    new-array v3, v15, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v15, 0x0

    new-instance v18, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "Mac"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v15

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "Mac"

    invoke-direct {v15, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-nez v17, :cond_5

    new-instance v3, Lsun/security/internal/spec/TlsKeyMaterialSpec;

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v15}, Lsun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    :goto_2
    return-object v3

    :cond_1
    const/4 v4, 0x0

    move v9, v4

    goto :goto_0

    :cond_2
    move v4, v10

    goto :goto_1

    :cond_3
    new-array v4, v6, [B

    const/16 v5, 0x14

    new-array v0, v5, [B

    move-object/from16 v18, v0

    const/4 v5, 0x0

    :goto_3
    if-lez v6, :cond_0

    sget-object v19, Lcom/sun/crypto/provider/TlsPrfGenerator;->SSL3_CONST:[[B

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v14}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v13}, Ljava/security/MessageDigest;->update([B)V

    const/16 v19, 0x0

    const/16 v20, 0x14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    invoke-virtual {v7, v3}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v19, 0x10

    move/from16 v0, v19

    if-lt v6, v0, :cond_4

    shl-int/lit8 v19, v5, 0x4

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v4, v0, v1}, Ljava/security/MessageDigest;->digest([BII)I

    :goto_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x10

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    const/16 v20, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    const/16 v19, 0x0

    shl-int/lit8 v20, v5, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v3}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    new-array v3, v0, [B

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v4, v5, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v5, v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v5, v17

    if-nez v9, :cond_6

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v19

    invoke-direct {v6, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-eqz v10, :cond_8

    new-array v3, v10, [B

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v10

    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v12, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v9, v11

    move-object v7, v12

    :goto_5
    new-instance v3, Lsun/security/internal/spec/TlsKeyMaterialSpec;

    move-object/from16 v4, v18

    move-object v5, v15

    invoke-direct/range {v3 .. v9}, Lsun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v5, 0x301

    if-lt v4, v5, :cond_7

    invoke-static {v13, v14}, Lcom/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v5

    sget-object v4, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_CLIENT_WRITE_KEY:[B

    move/from16 v6, v16

    invoke-static/range {v3 .. v8}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v19

    invoke-direct {v13, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v4, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_SERVER_WRITE_KEY:[B

    move-object/from16 v3, v20

    move/from16 v6, v16

    invoke-static/range {v3 .. v8}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v19

    invoke-direct {v9, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-eqz v10, :cond_9

    new-array v11, v10, [B

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/crypto/provider/TlsPrfGenerator;->LABEL_IV_BLOCK:[B

    shl-int/lit8 v6, v10, 0x1

    invoke-static/range {v3 .. v8}, Lcom/sun/crypto/provider/TlsPrfGenerator;->doPRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v11, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x0

    invoke-static {v3, v10, v11, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_6
    move-object v8, v9

    move-object v7, v4

    move-object v6, v13

    move-object v9, v3

    goto :goto_5

    :cond_7
    move/from16 v0, v16

    new-array v4, v0, [B

    invoke-virtual {v7, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v14}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-static {v3, v5, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v19

    invoke-direct {v6, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v14}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v0, v16

    invoke-static {v3, v5, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v19

    invoke-direct {v8, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-eqz v10, :cond_8

    new-array v3, v10, [B

    invoke-virtual {v7, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v14}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v12, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v7, v14}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v9, v11

    move-object v7, v12

    goto/16 :goto_5

    :cond_8
    move-object v9, v11

    move-object v7, v12

    goto/16 :goto_5

    :cond_9
    move-object v3, v11

    move-object v4, v12

    goto :goto_6
.end method


# virtual methods
.method protected final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 2

    iget-object v0, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->engineGenerateKey0()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    instance-of v0, p1, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    iput-object p1, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    const-string v0, "RAW"

    iget-object v1, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v1}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Key format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMajorVersion()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v1}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMinorVersion()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    iget v0, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v1, 0x300

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v1, 0x302

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only SSL 3.0, TLS 1.0, and TLS 1.1 supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
