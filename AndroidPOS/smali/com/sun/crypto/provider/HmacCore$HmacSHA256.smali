.class public final Lcom/sun/crypto/provider/HmacCore$HmacSHA256;
.super Ljavax/crypto/MacSpi;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcom/sun/crypto/provider/HmacCore;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/HmacCore;

    const-string v1, "SHA-256"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/HmacCore;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    return-void
.end method

.method private constructor <init>(Lcom/sun/crypto/provider/HmacCore$HmacSHA256;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    iget-object v0, p1, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/crypto/provider/HmacCore;

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;

    invoke-direct {v0, p0}, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;-><init>(Lcom/sun/crypto/provider/HmacCore$HmacSHA256;)V

    return-object v0
.end method

.method protected final engineDoFinal()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->a()I

    move-result v0

    return v0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected final engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->c()V

    return-void
.end method

.method protected final engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(B)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA256;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/HmacCore;->a([BII)V

    return-void
.end method
