.class final Lcom/sun/crypto/provider/SunJCE_l;
.super Lcom/sun/crypto/provider/SunJCE_k;
.source "ProGuard"


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_k;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CTS"

    return-object v0
.end method

.method final c([BII[BI)V
    .locals 8

    const/4 v6, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge p3, v0, :cond_0

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    const-string v1, "input is too short!"

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ne p3, v0, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_k;->a([BII[BI)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    rem-int v7, p3, v0

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_k;->a([BII[BI)V

    add-int v0, p5, p3

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v2, v2, [B

    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {p4, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {p4, v1, p4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v2, v6, p4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v0, v7

    sub-int v3, p3, v0

    if-lez v3, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_k;->a([BII[BI)V

    add-int/2addr p2, v3

    add-int/2addr p5, v3

    :cond_3
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v1, v0, [B

    move v0, v6

    :goto_1
    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v2, :cond_4

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v2, v0, [B

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, v1, v6, v2, v6}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v0, p5

    invoke-static {v2, v6, p4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v6

    :goto_2
    if-ge v0, v7, :cond_5

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    aget-byte v1, p1, v1

    aget-byte v3, v2, v0

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, v2, v6, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    goto :goto_0
.end method

.method final d([BII[BI)V
    .locals 8

    const/4 v6, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge p3, v0, :cond_0

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    const-string v1, "input is too short!"

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ne p3, v0, :cond_2

    invoke-virtual/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_k;->b([BII[BI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    rem-int v7, p3, v0

    if-nez v7, :cond_3

    add-int v0, p2, p3

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    sub-int/2addr v0, v1

    add-int v1, p2, p3

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    mul-int/lit8 v2, v2, 0x2

    new-array v7, v2, [B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {p1, v0, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {p1, v1, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v3, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_k;->b([BII[BI)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    mul-int/lit8 v4, v0, 0x2

    add-int v5, p5, v3

    move-object v0, p0

    move-object v1, v7

    move v2, v6

    move v3, v4

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_k;->b([BII[BI)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v0, v7

    sub-int v3, p3, v0

    if-lez v3, :cond_4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_k;->b([BII[BI)V

    add-int/2addr p2, v3

    add-int/2addr p5, v3

    :cond_4
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v1, v0, [B

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, v1, v6}, Lcom/sun/crypto/provider/SunJCE_e;->b([BI[BI)V

    move v0, v6

    :goto_1
    if-ge v0, v7, :cond_5

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v2, p5

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v3, p2

    add-int/2addr v3, v0

    aget-byte v3, p1, v3

    aget-byte v4, v1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr v0, p2

    invoke-static {p1, v0, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, v1, v6, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->b([BI[BI)V

    move v0, v6

    :goto_2
    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v1, :cond_1

    add-int v1, p5, v0

    add-int v2, p5, v0

    aget-byte v2, p4, v2

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_k;->a:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
