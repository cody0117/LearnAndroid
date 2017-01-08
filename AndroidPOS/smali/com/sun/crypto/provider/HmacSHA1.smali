.class public final Lcom/sun/crypto/provider/HmacSHA1;
.super Ljavax/crypto/MacSpi;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final b:I = 0x40


# instance fields
.field private a:Lcom/sun/crypto/provider/HmacCore;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The SunJCE provider may have been tampered."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sun/crypto/provider/HmacCore;

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/HmacCore;-><init>(Ljava/security/MessageDigest;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/crypto/provider/HmacSHA1;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v1}, Lcom/sun/crypto/provider/HmacCore;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/crypto/provider/HmacCore;

    iput-object v1, v0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected final engineDoFinal()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->a()I

    move-result v0

    return v0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected final engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->c()V

    return-void
.end method

.method protected final engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(B)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacSHA1;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/HmacCore;->a([BII)V

    return-void
.end method
