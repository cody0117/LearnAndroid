.class final Lcom/sun/crypto/provider/DESedeKey;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljavax/crypto/SecretKey;


# static fields
.field static final serialVersionUID:J = 0x2231d6ba0f43f5daL


# instance fields
.field private key:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/crypto/provider/DESedeKey;-><init>([BI)V

    return-void
.end method

.method constructor <init>([BI)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    invoke-static {v0, v2}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/DESKeyGenerator;->a([BI)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    invoke-virtual {p0}, Lcom/sun/crypto/provider/DESedeKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/crypto/provider/DESedeKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/crypto/provider/DESedeKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DESede"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TripleDES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

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

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/crypto/provider/DESedeKey;->key:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "desede"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
