.class Lcom/sun/crypto/provider/SunJCE_k;
.super Lcom/sun/crypto/provider/SunJCE_h;
.source "ProGuard"


# instance fields
.field protected a:[B

.field private b:[B

.field private c:[B


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_h;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->c:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->b:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "CBC"

    return-object v0
.end method

.method a(ZLjava/lang/String;[B[B)V
    .locals 2

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p4, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_k;->b()V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_e;->a(ZLjava/lang/String;[B)V

    return-void
.end method

.method a([BII[BI)V
    .locals 6

    const/4 v1, 0x0

    add-int v2, p2, p3

    :goto_0
    if-ge p2, v2, :cond_1

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_k;->b:[B

    add-int v4, v0, p2

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_k;->b:[B

    invoke-virtual {v0, v3, v1, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {p4, p5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p5, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method b([BII[BI)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    add-int v3, p2, p3

    if-ne p1, p4, :cond_3

    if-lt p2, p5, :cond_3

    sub-int v2, p2, p5

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    :goto_0
    if-ge p2, v3, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_k;->b:[B

    invoke-virtual {v0, p1, p2, v4, v1}, Lcom/sun/crypto/provider/SunJCE_e;->b([BI[BI)V

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v4, :cond_0

    add-int v4, v0, p5

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_k;->b:[B

    aget-byte v5, v5, v0

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    aget-byte v6, v6, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {p1, p2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p5, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v2, p2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->c:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->c:[B

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_k;->c:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_k;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
