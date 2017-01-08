.class final Lcom/sun/crypto/provider/SunJCE_n;
.super Lcom/sun/crypto/provider/SunJCE_h;
.source "ProGuard"


# instance fields
.field private final a:[B

.field private final b:[B

.field private c:I

.field private d:[B


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_h;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->d:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-le p2, v0, :cond_0

    iget p2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    :cond_0
    iput p2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CFB"

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

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_n;->b()V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_e;->a(ZLjava/lang/String;[B)V

    return-void
.end method

.method final a([BII[BI)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    sub-int v3, v0, v2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    div-int v0, p3, v0

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    rem-int v4, p3, v2

    if-nez v3, :cond_5

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v3, v1, v5, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v5, v0, p5

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v6, v6, v0

    add-int v7, v0, p2

    aget-byte v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p5, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    :goto_2
    if-ge v1, v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v2, v1, p5

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v3, v3, v1

    add-int v5, v1, p2

    aget-byte v5, p1, v5

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p5, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    :goto_3
    if-lez v2, :cond_3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v5, v1, v6, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    invoke-static {v0, v5, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_4
    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v6, v0, v3

    add-int v7, v0, p5

    iget-object v8, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v8, v8, v0

    add-int v9, v0, p2

    aget-byte v9, p1, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p4, v7

    aput-byte v8, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v2, v1, v5, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    if-ge v1, v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v2, v1, v3

    add-int v5, v1, p5

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v6, v6, v1

    add-int v7, v1, p2

    aget-byte v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    aput-byte v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    return-void

    :cond_5
    move v2, v0

    goto :goto_3
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final b([BII[BI)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    sub-int v3, v0, v2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    div-int v0, p3, v0

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    rem-int v4, p3, v2

    if-nez v3, :cond_5

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v3, v1, v5, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    add-int v3, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v6, v6, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p5, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    :goto_2
    if-ge v1, v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v2, v1, p2

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int v0, v1, p5

    add-int v2, v1, p2

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v3, v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p5, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    :goto_3
    if-lez v2, :cond_3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v5, v1, v6, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    invoke-static {v0, v5, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_4
    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v6, v0, v3

    add-int v7, v0, p2

    aget-byte v7, p1, v7

    aput-byte v7, v5, v6

    add-int v5, v0, p5

    add-int v6, v0, p2

    aget-byte v6, p1, v6

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    invoke-virtual {v0, v2, v1, v5, v1}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_n;->c:I

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    if-ge v1, v4, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    add-int v2, v1, v3

    add-int v5, v1, p2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v2

    add-int v0, v1, p5

    add-int v2, v1, p2

    aget-byte v2, p1, v2

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_n;->a:[B

    aget-byte v5, v5, v1

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    return-void

    :cond_5
    move v2, v0

    goto :goto_3
.end method

.method final c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->d:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->d:[B

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_n;->d:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_n;->d:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_n;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
