.class abstract Lcom/sun/crypto/provider/SunJCE_h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field final a:Lcom/sun/crypto/provider/SunJCE_e;

.field final b:I

.field c:[B


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {p1}, Lcom/sun/crypto/provider/SunJCE_e;->a()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract a(ZLjava/lang/String;[B[B)V
.end method

.method abstract a([BII[BI)V
.end method

.method abstract b()V
.end method

.method abstract b([BII[BI)V
.end method

.method abstract c()V
.end method

.method c([BII[BI)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_h;->a([BII[BI)V

    return-void
.end method

.method abstract d()V
.end method

.method d([BII[BI)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_h;->b([BII[BI)V

    return-void
.end method

.method final e()Lcom/sun/crypto/provider/SunJCE_e;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    return-object v0
.end method

.method final f()I
    .locals 1

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    return v0
.end method

.method final g()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    return-object v0
.end method
