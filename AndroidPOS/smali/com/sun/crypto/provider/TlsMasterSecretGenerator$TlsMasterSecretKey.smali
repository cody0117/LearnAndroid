.class final Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lsun/security/internal/interfaces/TlsMasterSecret;


# instance fields
.field private key:[B

.field private final majorVersion:I

.field private final minorVersion:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->key:[B

    iput p2, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->majorVersion:I

    iput p3, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->minorVersion:I

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "TlsMasterSecret"

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->key:[B

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

.method public final getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->majorVersion:I

    return v0
.end method

.method public final getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->minorVersion:I

    return v0
.end method
