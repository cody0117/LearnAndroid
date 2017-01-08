.class final Lcom/sun/crypto/provider/HmacCore;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:[B

.field private final c:[B

.field private d:Z

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/sun/crypto/provider/HmacCore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iget v0, p1, Lcom/sun/crypto/provider/HmacCore;->e:I

    iput v0, p0, Lcom/sun/crypto/provider/HmacCore;->e:I

    iget-object v0, p1, Lcom/sun/crypto/provider/HmacCore;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    iget-object v0, p1, Lcom/sun/crypto/provider/HmacCore;->c:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->c:[B

    iget-boolean v0, p1, Lcom/sun/crypto/provider/HmacCore;->d:Z

    iput-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/crypto/provider/HmacCore;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/sun/crypto/provider/HmacCore;->e:I

    iget v0, p0, Lcom/sun/crypto/provider/HmacCore;->e:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    iget v0, p0, Lcom/sun/crypto/provider/HmacCore;->e:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->c:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method final a(B)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method final a(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "HMAC does not use parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Secret key expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v0, v1

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Missing key data"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, v1

    iget v3, p0, Lcom/sun/crypto/provider/HmacCore;->e:I

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    move v1, v2

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/HmacCore;->e:I

    if-ge v1, v3, :cond_5

    array-length v3, v0

    if-ge v1, v3, :cond_4

    aget-byte v3, v0, v1

    :goto_2
    iget-object v4, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    xor-int/lit8 v5, v3, 0x36

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    iget-object v4, p0, Lcom/sun/crypto/provider/HmacCore;->c:[B

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0}, Lcom/sun/crypto/provider/HmacCore;->c()V

    return-void

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method final a([BII)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method final b()[B
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/sun/crypto/provider/HmacCore;->c:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    iput-boolean v1, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/HmacCore;->d:Z

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sun/crypto/provider/HmacCore;

    invoke-direct {v0, p0}, Lcom/sun/crypto/provider/HmacCore;-><init>(Lcom/sun/crypto/provider/HmacCore;)V

    return-object v0
.end method
