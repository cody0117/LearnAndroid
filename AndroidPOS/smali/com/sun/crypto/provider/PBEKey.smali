.class final Lcom/sun/crypto/provider/PBEKey;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljavax/crypto/SecretKey;


# static fields
.field static final serialVersionUID:J = -0x1f037e7ba76d86d0L


# instance fields
.field private key:[B

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x20

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [C

    :cond_0
    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-char v3, v0, v1

    if-lt v3, v5, :cond_1

    aget-char v3, v0, v1

    const/16 v4, 0x7e

    if-le v3, v4, :cond_2

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Password is not ASCII"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    aget-char v3, v0, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([CC)V

    iput-object p2, p0, Lcom/sun/crypto/provider/PBEKey;->type:Ljava/lang/String;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    invoke-virtual {p0}, Lcom/sun/crypto/provider/PBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/crypto/provider/PBEKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/crypto/provider/PBEKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

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

    iget-object v2, p0, Lcom/sun/crypto/provider/PBEKey;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iget-object v1, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B
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

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

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
    iget-object v2, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/crypto/provider/PBEKey;->key:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/crypto/provider/PBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
