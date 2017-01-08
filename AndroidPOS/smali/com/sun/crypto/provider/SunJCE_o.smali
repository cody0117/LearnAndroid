.class final Lcom/sun/crypto/provider/SunJCE_o;
.super Lcom/sun/crypto/provider/SunJCE_h;
.source "ProGuard"


# instance fields
.field private a:[B

.field private b:[B

.field private c:I

.field private d:[B


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_h;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->d:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-le p2, v0, :cond_0

    iget p2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    :cond_0
    iput p2, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "OFB"

    return-object v0
.end method

.method final a(ZLjava/lang/String;[B[B)V
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

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_o;->b()V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_e;->a(ZLjava/lang/String;[B)V

    return-void
.end method

.method final a([BII[BI)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    sub-int v3, v0, v2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    div-int v0, p3, v0

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    rem-int v4, p3, v2

    if-nez v3, :cond_7

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    invoke-virtual {v0, v3, v1, v5, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    if-ge v0, v3, :cond_0

    add-int v3, v0, p5

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    aget-byte v5, v5, v0

    add-int v6, v0, p2

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    invoke-static {v0, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    add-int/2addr p5, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_2

    add-int v2, v0, p5

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    aget-byte v3, v3, v0

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    invoke-static {v0, v5, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v6, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    invoke-static {v0, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    add-int/2addr p5, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    :goto_4
    if-lez v2, :cond_5

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    invoke-virtual {v0, v5, v1, v6, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_5
    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    if-ge v0, v5, :cond_4

    add-int v5, v0, p5

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    aget-byte v6, v6, v0

    add-int v7, v0, p2

    aget-byte v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    invoke-virtual {v0, v2, v1, v5, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_6
    if-ge v0, v4, :cond_6

    add-int v2, v0, p5

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    aget-byte v5, v5, v0

    add-int v6, v0, p2

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->a:[B

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_o;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_7
    move v2, v0

    goto :goto_4
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final b([BII[BI)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_o;->a([BII[BI)V

    return-void
.end method

.method final c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->d:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->d:[B

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_o;->d:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_o;->d:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_o;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
