.class final Lcom/sun/crypto/provider/SunJCE_g;
.super Lcom/sun/crypto/provider/SunJCE_h;
.source "ProGuard"


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_h;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ECB"

    return-object v0
.end method

.method final a(ZLjava/lang/String;[B[B)V
    .locals 2

    if-eqz p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_e;->a(ZLjava/lang/String;[B)V

    return-void
.end method

.method final a([BII[BI)V
    .locals 1

    :goto_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p5, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final b()V
    .locals 0

    return-void
.end method

.method final b([BII[BI)V
    .locals 1

    :goto_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->b([BI[BI)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p5, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final c()V
    .locals 0

    return-void
.end method

.method final d()V
    .locals 0

    return-void
.end method
