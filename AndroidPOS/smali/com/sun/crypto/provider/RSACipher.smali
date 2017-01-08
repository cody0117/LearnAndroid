.class public final Lcom/sun/crypto/provider/RSACipher;
.super Ljavax/crypto/CipherSpi;
.source "ProGuard"


# static fields
.field private static final a:[B = null

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:Ljava/lang/String; = "NoPadding"

.field private static final g:Ljava/lang/String; = "PKCS1Padding"

.field private static final h:Ljava/lang/String; = "OAEP"


# instance fields
.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lsun/security/rsa/RSAPadding;

.field private l:Ljavax/crypto/spec/OAEPParameterSpec;

.field private m:[B

.field private n:I

.field private o:I

.field private p:Ljava/security/interfaces/RSAPublicKey;

.field private q:Ljava/security/interfaces/RSAPrivateKey;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/crypto/provider/RSACipher;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->l:Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v0, "SHA-1"

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->r:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    const-string v0, "PKCS1Padding"

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :goto_0
    invoke-static {p2}, Lsun/security/rsa/RSAKeyFactory;->toRSAKey(Ljava/security/Key;)Ljava/security/interfaces/RSAKey;

    move-result-object v7

    instance-of v3, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    move v3, v1

    :goto_1
    iput v3, p0, Lcom/sun/crypto/provider/RSACipher;->i:I

    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    iput-object p2, p0, Lcom/sun/crypto/provider/RSACipher;->p:Ljava/security/interfaces/RSAPublicKey;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/crypto/provider/RSACipher;->q:Ljava/security/interfaces/RSAPrivateKey;

    :goto_2
    invoke-interface {v7}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lsun/security/rsa/RSACore;->getByteLength(Ljava/math/BigInteger;)I

    move-result v3

    iput v3, p0, Lcom/sun/crypto/provider/RSACipher;->o:I

    iput v2, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    iget-object v2, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    const-string v7, "NoPadding"

    if-ne v2, v7, :cond_5

    if-eqz p4, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move v3, v5

    :goto_3
    iput v3, p0, Lcom/sun/crypto/provider/RSACipher;->i:I

    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    iput-object p2, p0, Lcom/sun/crypto/provider/RSACipher;->q:Ljava/security/interfaces/RSAPrivateKey;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/crypto/provider/RSACipher;->p:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_2

    :cond_2
    move v3, v6

    goto :goto_3

    :cond_3
    invoke-static {v5, v3, p3}, Lsun/security/rsa/RSAPadding;->getInstance(IILjava/security/SecureRandom;)Lsun/security/rsa/RSAPadding;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    :cond_4
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    :goto_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    const-string v7, "PKCS1Padding"

    if-ne v2, v7, :cond_9

    if-eqz p4, :cond_6

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v2, p0, Lcom/sun/crypto/provider/RSACipher;->i:I

    if-gt v2, v6, :cond_7

    :goto_5
    invoke-static {v6, v3, p3}, Lsun/security/rsa/RSAPadding;->getInstance(IILjava/security/SecureRandom;)Lsun/security/rsa/RSAPadding;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    invoke-virtual {v0}, Lsun/security/rsa/RSAPadding;->getMaxDataSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    goto :goto_4

    :cond_7
    move v6, v1

    goto :goto_5

    :cond_8
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    goto :goto_4

    :cond_9
    iget v1, p0, Lcom/sun/crypto/provider/RSACipher;->i:I

    if-eq v1, v5, :cond_a

    iget v1, p0, Lcom/sun/crypto/provider/RSACipher;->i:I

    if-ne v1, v4, :cond_b

    :cond_a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "OAEP cannot be used to sign or verify signatures"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p4, :cond_d

    instance-of v1, p4, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v1, :cond_c

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong Parameters for OAEP Padding"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    check-cast p4, Ljavax/crypto/spec/OAEPParameterSpec;

    :goto_6
    invoke-static {v4, v3, p3, p4}, Lsun/security/rsa/RSAPadding;->getInstance(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lsun/security/rsa/RSAPadding;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    invoke-virtual {v0}, Lsun/security/rsa/RSAPadding;->getMaxDataSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    goto :goto_4

    :cond_d
    new-instance p4, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->r:Ljava/lang/String;

    const-string v2, "MGF1"

    sget-object v5, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v6, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p4, v1, v2, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a([BII)V
    .locals 2

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    iget v1, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    goto :goto_0
.end method

.method private a()[B
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data must not be longer than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sun/crypto/provider/RSACipher;->i:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iput v4, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    throw v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lsun/security/rsa/RSAPadding;->pad([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->q:Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0, v1}, Lsun/security/rsa/RSACore;->rsa([BLjava/security/interfaces/RSAPrivateKey;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iput v4, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    :goto_0
    return-object v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    invoke-static {v0, v1, v2}, Lsun/security/rsa/RSACore;->convert([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->p:Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0, v1}, Lsun/security/rsa/RSACore;->rsa([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    invoke-virtual {v1, v0}, Lsun/security/rsa/RSAPadding;->unpad([B)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    iput v4, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    goto :goto_0

    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lsun/security/rsa/RSAPadding;->pad([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->p:Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0, v1}, Lsun/security/rsa/RSACore;->rsa([BLjava/security/interfaces/RSAPublicKey;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    iput v4, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    goto :goto_0

    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    invoke-static {v0, v1, v2}, Lsun/security/rsa/RSACore;->convert([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->q:Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0, v1}, Lsun/security/rsa/RSACore;->rsa([BLjava/security/interfaces/RSAPrivateKey;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->k:Lsun/security/rsa/RSAPadding;

    invoke-virtual {v1, v0}, Lsun/security/rsa/RSAPadding;->unpad([B)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    iput v4, p0, Lcom/sun/crypto/provider/RSACipher;->n:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final engineDoFinal([BII[BI)I
    .locals 3

    iget v0, p0, Lcom/sun/crypto/provider/RSACipher;->o:I

    array-length v1, p4

    sub-int/2addr v1, p5

    if-le v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Need "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/crypto/provider/RSACipher;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes for output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/crypto/provider/RSACipher;->a([BII)V

    invoke-direct {p0}, Lcom/sun/crypto/provider/RSACipher;->a()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method protected final engineDoFinal([BII)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/crypto/provider/RSACipher;->a([BII)V

    invoke-direct {p0}, Lcom/sun/crypto/provider/RSACipher;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    invoke-static {p1}, Lsun/security/rsa/RSAKeyFactory;->toRSAKey(Ljava/security/Key;)Ljava/security/interfaces/RSAKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/RSACipher;->o:I

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->l:Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "OAEP"

    const-string v1, "SunJCE"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->l:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find OAEP  AlgorithmParameters implementation in SunJCE provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find SunJCE provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "OAEPParameterSpec not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3

    if-nez p3, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/sun/crypto/provider/RSACipher;->a(ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/sun/crypto/provider/RSACipher;->a(ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Wrong parameter"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/crypto/provider/RSACipher;->a(ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Wrong parameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sun/crypto/provider/RSACipher;->a(ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported mode "

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

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NoPadding"

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "PKCS1Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PKCS1Padding"

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaeppadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "OAEP"

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "oaepwith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "andmgf1padding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "OAEP"

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->j:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/RSACipher;->r:Ljava/lang/String;

    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    const-string v1, "MessageDigest"

    iget-object v2, p0, Lcom/sun/crypto/provider/RSACipher;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageDigest not available for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Padding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key is too long for unwrapping"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/crypto/provider/RSACipher;->a([BII)V

    :try_start_0
    invoke-direct {p0}, Lcom/sun/crypto/provider/RSACipher;->a()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sun/crypto/provider/SunJCE_s;->a([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unwrapping failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unwrapping failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/crypto/provider/RSACipher;->a([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method protected final engineUpdate([BII)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/crypto/provider/RSACipher;->a([BII)V

    sget-object v0, Lcom/sun/crypto/provider/RSACipher;->a:[B

    return-object v0
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 3

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Could not obtain encoded key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, v0

    iget-object v2, p0, Lcom/sun/crypto/provider/RSACipher;->m:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key is too long for wrapping"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/crypto/provider/RSACipher;->a([BII)V

    :try_start_0
    invoke-direct {p0}, Lcom/sun/crypto/provider/RSACipher;->a()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Wrapping failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
