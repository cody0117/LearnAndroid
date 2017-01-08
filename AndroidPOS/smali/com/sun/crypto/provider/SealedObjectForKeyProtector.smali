.class final Lcom/sun/crypto/provider/SealedObjectForKeyProtector;
.super Ljavax/crypto/SealedObject;
.source "ProGuard"


# static fields
.field static final serialVersionUID:J = -0x32a835a618cf44adL


# direct methods
.method constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/crypto/SealedObject;-><init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V

    return-void
.end method

.method constructor <init>(Ljavax/crypto/SealedObject;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/crypto/SealedObject;-><init>(Ljavax/crypto/SealedObject;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/security/AlgorithmParameters;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "PBE"

    const-string v2, "SunJCE"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iget-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
