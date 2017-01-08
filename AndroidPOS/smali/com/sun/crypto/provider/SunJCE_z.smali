.class final Lcom/sun/crypto/provider/SunJCE_z;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String; = "1.3.6.1.4.1.42.2.19.1"

.field private static final b:Ljava/lang/String; = "1.3.6.1.4.1.42.2.17.1.1"

.field private static final c:I = 0x14

.field private static final d:I = 0x14

.field private static final f:Ljava/security/Provider;


# instance fields
.field private e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SunJCE"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_z;->f:Ljava/security/Provider;

    return-void
.end method

.method constructor <init>([C)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    return-void
.end method

.method private a([B)[B
    .locals 12

    const/16 v3, 0x14

    const/4 v2, 0x0

    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    new-array v4, v3, [B

    invoke-static {p1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x14

    add-int/lit8 v6, v0, -0x14

    div-int/lit8 v0, v6, 0x14

    rem-int/lit8 v1, v6, 0x14

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v7, v6, [B

    invoke-static {p1, v3, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v7

    new-array v8, v1, [B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v9, v1, [B

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v10, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    array-length v10, v10

    if-ge v3, v10, :cond_1

    add-int/lit8 v10, v1, 0x1

    iget-object v11, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    aget-char v11, v11, v3

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v1

    add-int/lit8 v1, v10, 0x1

    iget-object v11, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    move-object v3, v4

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v10, v0, -0x1

    if-ge v4, v10, :cond_2

    array-length v10, v3

    invoke-static {v3, v2, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x14

    goto :goto_1

    :cond_2
    array-length v10, v8

    sub-int/2addr v10, v1

    invoke-static {v3, v2, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    array-length v0, v7

    new-array v1, v0, [B

    move v0, v2

    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_4

    aget-byte v3, v7, v0

    aget-byte v4, v8, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v9, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_6

    aget-byte v3, v0, v2

    add-int/lit8 v4, v6, 0x14

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_5

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Cannot recover key"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-object v1
.end method


# virtual methods
.method final a(Lcom/sun/crypto/provider/SunJCE_aa;)Ljava/security/Key;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/crypto/provider/SunJCE_aa;->a()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.3.6.1.4.1.42.2.19.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.3.6.1.4.1.42.2.17.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Unsupported encryption algorithm"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    const-string v1, "1.3.6.1.4.1.42.2.17.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/crypto/provider/SunJCE_aa;->b()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/crypto/provider/SunJCE_z;->a([B)[B

    move-result-object v0

    :goto_0
    new-instance v1, Lsun/security/x509/AlgorithmId;

    new-instance v2, Lcom/sun/crypto/provider/SunJCE_ac;

    invoke-direct {v2, v0}, Lcom/sun/crypto/provider/SunJCE_ac;-><init>([B)V

    invoke-virtual {v2}, Lcom/sun/crypto/provider/SunJCE_ac;->a()Lsun/security/x509/AlgorithmId;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/crypto/provider/SunJCE_aa;->a()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v0

    const-string v1, "PBE"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    invoke-direct {v1, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    new-instance v2, Lcom/sun/crypto/provider/PBEKey;

    const-string v3, "PBEWithMD5AndTripleDES"

    invoke-direct {v2, v1, v3}, Lcom/sun/crypto/provider/PBEKey;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    new-instance v1, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;

    invoke-direct {v1}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Lcom/sun/crypto/provider/SunJCE_aa;->b()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sun/crypto/provider/SunJCE_aa;->b()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->engineDoFinal([BII)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final a(Ljavax/crypto/SealedObject;)Ljava/security/Key;
    .locals 6

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    new-instance v1, Lcom/sun/crypto/provider/PBEKey;

    const-string v2, "PBEWithMD5AndTripleDES"

    invoke-direct {v1, v0, v2}, Lcom/sun/crypto/provider/PBEKey;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    instance-of v0, p1, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;

    invoke-direct {v0, p1}, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;-><init>(Ljavax/crypto/SealedObject;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;->a()Ljava/security/AlgorithmParameters;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Cannot get algorithm parameters"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    check-cast p1, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;

    invoke-direct {v2}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;-><init>()V

    new-instance v3, Lcom/sun/crypto/provider/SunJCE_ad;

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_z;->f:Ljava/security/Provider;

    const-string v5, "PBEWithMD5AndTripleDES"

    invoke-direct {v3, v2, v4, v5}, Lcom/sun/crypto/provider/SunJCE_ad;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {p1, v3}, Ljavax/crypto/SealedObject;->getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final a(Ljava/security/Key;)Ljavax/crypto/SealedObject;
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [B

    sget-object v1, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    invoke-direct {v0, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    new-instance v2, Lcom/sun/crypto/provider/PBEKey;

    const-string v3, "PBEWithMD5AndTripleDES"

    invoke-direct {v2, v0, v3}, Lcom/sun/crypto/provider/PBEKey;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    new-instance v0, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;

    invoke-direct {v0}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;-><init>()V

    new-instance v3, Lcom/sun/crypto/provider/SunJCE_ad;

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_z;->f:Ljava/security/Provider;

    const-string v5, "PBEWithMD5AndTripleDES"

    invoke-direct {v3, v0, v4, v5}, Lcom/sun/crypto/provider/SunJCE_ad;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;

    invoke-direct {v0, p1, v3}, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;-><init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method final a(Ljava/security/PrivateKey;)[B
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    sget-object v1, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_z;->e:[C

    invoke-direct {v0, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    new-instance v2, Lcom/sun/crypto/provider/PBEKey;

    const-string v3, "PBEWithMD5AndTripleDES"

    invoke-direct {v2, v0, v3}, Lcom/sun/crypto/provider/PBEKey;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    new-instance v3, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;

    invoke-direct {v3}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;-><init>()V

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    check-cast v0, [B

    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Lcom/sun/crypto/provider/PBEWithMD5AndTripleDESCipher;->engineDoFinal([BII)[B

    move-result-object v0

    const-string v2, "PBE"

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_z;->f:Ljava/security/Provider;

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Lsun/security/x509/AlgorithmId;

    new-instance v3, Lsun/security/util/ObjectIdentifier;

    const-string v4, "1.3.6.1.4.1.42.2.19.1"

    invoke-direct {v3, v4}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    new-instance v2, Lcom/sun/crypto/provider/SunJCE_aa;

    invoke-direct {v2, v1, v0}, Lcom/sun/crypto/provider/SunJCE_aa;-><init>(Lsun/security/x509/AlgorithmId;[B)V

    invoke-virtual {v2}, Lcom/sun/crypto/provider/SunJCE_aa;->c()[B

    move-result-object v0

    return-object v0
.end method
