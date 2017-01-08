.class final Lcom/sun/crypto/provider/SunJCE_p;
.super Lcom/sun/crypto/provider/SunJCE_h;
.source "ProGuard"


# instance fields
.field private final a:[B

.field private b:[B


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_h;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_p;->b:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PCBC"

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

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_p;->b()V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_e;->a(ZLjava/lang/String;[B)V

    return-void
.end method

.method final a([BII[BI)V
    .locals 6

    const/4 v1, 0x0

    add-int v2, p2, p3

    :goto_0
    if-ge p2, v2, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    aget-byte v4, v3, v0

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    invoke-virtual {v0, v3, v1, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    add-int v4, v0, p2

    aget-byte v4, p1, v4

    add-int v5, v0, p5

    aget-byte v5, p4, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p5, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final b([BII[BI)V
    .locals 6

    const/4 v1, 0x0

    add-int v2, p2, p3

    :goto_0
    if-ge p2, v2, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/sun/crypto/provider/SunJCE_e;->b([BI[BI)V

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_0

    add-int v3, v0, p5

    aget-byte v4, p4, v3

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_2
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    add-int v4, v0, p5

    aget-byte v4, p4, v4

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p5, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method final c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_p;->b:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_p;->b:[B

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_p;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_p;->b:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_p;->a:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
