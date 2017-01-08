.class public final Lcom/sun/crypto/provider/JceKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "ProGuard"


# static fields
.field private static final a:I = -0x31313132

.field private static final b:I = -0x1120113

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    return-void
.end method

.method private a([C)Ljava/security/MessageDigest;
    .locals 7

    const/4 v1, 0x0

    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget-char v6, p1, v2

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v5, 0x1

    aget-char v6, p1, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    move v0, v1

    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "Mighty Aphrodite"

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    return-object v3
.end method


# virtual methods
.method public final engineAliases()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final engineContainsAlias(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final engineDeleteEntry(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$ak;->b:Ljava/security/cert/Certificate;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v1, v1, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public final engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/crypto/provider/JceKeyStore$ak;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sun/crypto/provider/JceKeyStore$ak;

    iget-object v1, v1, Lcom/sun/crypto/provider/JceKeyStore$ak;->b:Ljava/security/cert/Certificate;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v0

    :cond_1
    instance-of v2, v1, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v2, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v1, v1, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    check-cast v1, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v0, v1, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public final engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Date;

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$ak;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Date;

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Date;

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$aj;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$aj;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/crypto/provider/JceKeyStore$aj;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sun/crypto/provider/SunJCE_z;

    invoke-direct {v1, p2}, Lcom/sun/crypto/provider/SunJCE_z;-><init>([C)V

    instance-of v2, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B

    :try_start_0
    new-instance v2, Lcom/sun/crypto/provider/SunJCE_aa;

    invoke-direct {v2, v0}, Lcom/sun/crypto/provider/SunJCE_aa;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v2}, Lcom/sun/crypto/provider/SunJCE_z;->a(Lcom/sun/crypto/provider/SunJCE_aa;)Ljava/security/Key;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Private key not stored as PKCS #8 EncryptedPrivateKeyInfo"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$aj;

    iget-object v0, v0, Lcom/sun/crypto/provider/JceKeyStore$aj;->b:Ljavax/crypto/SealedObject;

    invoke-virtual {v1, v0}, Lcom/sun/crypto/provider/SunJCE_z;->a(Ljavax/crypto/SealedObject;)Ljava/security/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public final engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/crypto/provider/JceKeyStore$ak;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-nez v2, :cond_0

    instance-of v1, v1, Lcom/sun/crypto/provider/JceKeyStore$aj;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final engineLoad(Ljava/io/InputStream;[C)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    monitor-enter v10

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    monitor-exit v10

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/JceKeyStore;->a([C)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/security/DigestInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v3

    move-object v3, v2

    :goto_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const v8, -0x31313132

    if-eq v2, v8, :cond_1

    const v8, -0x1120113

    if-ne v2, v8, :cond_2

    :cond_1
    const/4 v2, 0x1

    if-eq v11, v2, :cond_4

    const/4 v2, 0x2

    if-eq v11, v2, :cond_4

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid keystore format"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v5, :cond_12

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    :goto_3
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v10

    throw v2

    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v3

    move-object v3, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    :try_start_4
    const-string v2, "X509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    move-object v9, v6

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    const/4 v2, 0x0

    move v8, v2

    :goto_5
    if-ge v8, v12, :cond_e

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    new-instance v13, Lcom/sun/crypto/provider/JceKeyStore$ai;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lcom/sun/crypto/provider/JceKeyStore$ai;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    move-wide v0, v15

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v13, Lcom/sun/crypto/provider/JceKeyStore$ai;->a:Ljava/util/Date;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v13, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v2, v13, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v15

    if-lez v15, :cond_5

    :try_start_7
    new-array v2, v15, [Ljava/security/cert/Certificate;

    iput-object v2, v13, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    const/4 v2, 0x0

    move v6, v2

    move-object v2, v7

    :goto_6
    if-ge v6, v15, :cond_9

    const/4 v7, 0x2

    if-ne v11, v7, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateFactory;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    :goto_7
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v7, v7, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v16, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v7, v13, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v16

    aput-object v16, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    new-instance v2, Ljava/util/Hashtable;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/Hashtable;-><init>(I)V

    move-object v9, v2

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Keysize too big"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too many certificates in chain"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catch_2
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Certificate too big"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v6, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object v5, v2

    move-object/from16 v2, v17

    :goto_8
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v7, v5

    move-object v5, v2

    goto/16 :goto_5

    :cond_a
    const/4 v6, 0x2

    if-ne v2, v6, :cond_c

    new-instance v6, Lcom/sun/crypto/provider/JceKeyStore$ak;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/sun/crypto/provider/JceKeyStore$ak;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v6, Lcom/sun/crypto/provider/JceKeyStore$ak;->a:Ljava/util/Date;

    const/4 v2, 0x2

    if-ne v11, v2, :cond_13

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateFactory;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v7, v7, [B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v14}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/crypto/provider/JceKeyStore$ak;->b:Ljava/security/cert/Certificate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v7, v13, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object v5, v2

    move-object/from16 v2, v17

    goto :goto_8

    :cond_b
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catch_3
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Certificate too big"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_d

    new-instance v13, Lcom/sun/crypto/provider/JceKeyStore$aj;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lcom/sun/crypto/provider/JceKeyStore$aj;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    move-wide v0, v15

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v13, Lcom/sun/crypto/provider/JceKeyStore$aj;->a:Ljava/util/Date;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SealedObject;

    iput-object v2, v13, Lcom/sun/crypto/provider/JceKeyStore$aj;->b:Ljavax/crypto/SealedObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v2, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    move-object v5, v7

    goto/16 :goto_8

    :catch_4
    move-exception v2

    :goto_a
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v2

    move-object v5, v6

    goto/16 :goto_2

    :cond_d
    :try_start_10
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unrecognized keystore entry"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    if-eqz p2, :cond_10

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v2, v3

    new-array v6, v2, [B

    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v2, 0x0

    :goto_b
    array-length v7, v3

    if-ge v2, v7, :cond_10

    aget-byte v7, v3, v2

    aget-byte v8, v6, v2

    if-eq v7, v8, :cond_f

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Keystore was tampered with, or password was incorrect"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    if-eqz v5, :cond_11

    :try_start_11
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    :goto_c
    monitor-exit v10

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_3

    :catch_5
    move-exception v2

    move-object v6, v5

    goto :goto_a

    :cond_13
    move-object v2, v7

    goto/16 :goto_9
.end method

.method public final engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Cannot overwrite own certificate"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    instance-of v0, v0, Lcom/sun/crypto/provider/JceKeyStore$aj;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Cannot overwrite secret key"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sun/crypto/provider/JceKeyStore$ak;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    iput-object p2, v0, Lcom/sun/crypto/provider/JceKeyStore$ak;->b:Ljava/security/cert/Certificate;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Lcom/sun/crypto/provider/JceKeyStore$ak;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/sun/crypto/provider/SunJCE_z;

    invoke-direct {v0, p3}, Lcom/sun/crypto/provider/SunJCE_z;-><init>([C)V

    instance-of v2, p2, Ljava/security/PrivateKey;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sun/crypto/provider/JceKeyStore$ai;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/crypto/provider/JceKeyStore$ai;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->a:Ljava/util/Date;

    check-cast p2, Ljava/security/PrivateKey;

    invoke-virtual {v0, p2}, Lcom/sun/crypto/provider/SunJCE_z;->a(Ljava/security/PrivateKey;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_4
    new-instance v2, Lcom/sun/crypto/provider/JceKeyStore$aj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/crypto/provider/JceKeyStore$aj;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lcom/sun/crypto/provider/JceKeyStore$aj;->a:Ljava/util/Date;

    invoke-virtual {v0, p2}, Lcom/sun/crypto/provider/SunJCE_z;->a(Ljava/security/Key;)Ljavax/crypto/SealedObject;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$aj;->b:Ljavax/crypto/SealedObject;

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public final engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 4

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/sun/crypto/provider/JceKeyStore$ai;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/sun/crypto/provider/JceKeyStore$ai;-><init>(Lcom/sun/crypto/provider/JceKeyStore$1;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->a:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final engineSize()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public final engineStore(Ljava/io/OutputStream;[C)V
    .locals 12

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    monitor-enter v6

    if-nez p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sun/crypto/provider/JceKeyStore;->a([C)Ljava/security/MessageDigest;

    move-result-object v7

    new-instance v8, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/security/DigestOutputStream;

    invoke-direct {v1, p1, v7}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v8, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const v1, -0x31313132

    :try_start_2
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    move-object v3, v2

    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/crypto/provider/JceKeyStore;->e:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/sun/crypto/provider/JceKeyStore$ai;

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v1, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B

    array-length v1, v1

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->b:[B

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v5

    :goto_2
    if-ge v1, v4, :cond_1

    iget-object v10, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    iget-object v11, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v11, v10

    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v2, Lcom/sun/crypto/provider/JceKeyStore$ai;->c:[Ljava/security/cert/Certificate;

    array-length v1, v1

    move v4, v1

    goto :goto_1

    :cond_3
    instance-of v4, v2, Lcom/sun/crypto/provider/JceKeyStore$ak;

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/crypto/provider/JceKeyStore$ak;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object v0, v2

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$ak;

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/crypto/provider/JceKeyStore$ak;->b:Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    check-cast v2, Lcom/sun/crypto/provider/JceKeyStore$ak;

    iget-object v2, v2, Lcom/sun/crypto/provider/JceKeyStore$ak;->b:Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v2, v1

    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    const/4 v4, 0x3

    :try_start_5
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sun/crypto/provider/JceKeyStore$aj;

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/crypto/provider/JceKeyStore$aj;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    check-cast v2, Lcom/sun/crypto/provider/JceKeyStore$aj;

    iget-object v1, v2, Lcom/sun/crypto/provider/JceKeyStore$aj;->b:Ljavax/crypto/SealedObject;

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    :goto_5
    monitor-exit v6

    return-void

    :cond_6
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5

    :cond_7
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v4

    goto :goto_3
.end method
