.class public final Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;
.super Ljavax/crypto/MacSpi;
.source "ProGuard"


# static fields
.field static final shaPad1:[B

.field static final shaPad2:[B


# instance fields
.field private final core:Lcom/sun/crypto/provider/SslMacCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x28

    const/16 v0, 0x36

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->shaPad1:[B

    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->shaPad2:[B

    const-class v0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    new-instance v0, Lcom/sun/crypto/provider/SslMacCore;

    const-string v1, "SHA"

    sget-object v2, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->shaPad1:[B

    sget-object v3, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->shaPad2:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/crypto/provider/SslMacCore;-><init>(Ljava/lang/String;[B[B)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    return-void
.end method


# virtual methods
.method protected final engineDoFinal()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SslMacCore;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SslMacCore;->getDigestLength()I

    move-result v0

    return v0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/SslMacCore;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected final engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SslMacCore;->reset()V

    return-void
.end method

.method protected final engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SslMacCore;->update(B)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SslMacCore;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacSHA1;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SslMacCore;->update([BII)V

    return-void
.end method
