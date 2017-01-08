.class final Lcom/sun/crypto/provider/SunJCE_aa;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lsun/security/x509/AlgorithmId;

.field private b:[B

.field private c:[B


# direct methods
.method constructor <init>(Lsun/security/x509/AlgorithmId;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/crypto/provider/SunJCE_aa;->a:Lsun/security/x509/AlgorithmId;

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->b:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->c:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [Lsun/security/util/DerValue;

    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "overrun, bytes = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    aget-object v0, v1, v3

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->a:Lsun/security/x509/AlgorithmId;

    aget-object v0, v1, v3

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "encryptionAlgorithm field overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v0, v1, v4

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->b:[B

    aget-object v0, v1, v4

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "encryptedData field overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->c:[B

    return-void
.end method


# virtual methods
.method final a()Lsun/security/x509/AlgorithmId;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->a:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method final b()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method final c()[B
    .locals 3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->c:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_aa;->a:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_aa;->b:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->c:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_aa;->c:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method
