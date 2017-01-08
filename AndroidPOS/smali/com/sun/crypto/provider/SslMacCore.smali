.class final Lcom/sun/crypto/provider/SslMacCore;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private first:Z

.field private final md:Ljava/security/MessageDigest;

.field private final pad1:[B

.field private final pad2:[B

.field private secret:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iput-object p2, p0, Lcom/sun/crypto/provider/SslMacCore;->pad1:[B

    iput-object p3, p0, Lcom/sun/crypto/provider/SslMacCore;->pad2:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    return-void
.end method


# virtual methods
.method final doFinal()[B
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->pad1:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/sun/crypto/provider/SslMacCore;->pad2:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    iput-boolean v1, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final getDigestLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "SslMac does not use parameters"

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

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Missing key data"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/sun/crypto/provider/SslMacCore;->reset()V

    return-void
.end method

.method final reset()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    :cond_0
    return-void
.end method

.method final update(B)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->pad1:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method final update(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->pad1:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method final update([BII)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->secret:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/sun/crypto/provider/SslMacCore;->pad1:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SslMacCore;->first:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
