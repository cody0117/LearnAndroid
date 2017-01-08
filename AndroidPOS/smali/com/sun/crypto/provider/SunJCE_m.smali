.class final Lcom/sun/crypto/provider/SunJCE_m;
.super Lcom/sun/crypto/provider/SunJCE_h;
.source "ProGuard"


# instance fields
.field private final a:[B

.field private final b:[B

.field private c:I

.field private d:[B

.field private e:[B

.field private f:I


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_h;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->d:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->e:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->f:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->a:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->b:[B

    return-void
.end method

.method private static a([B)V
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e([BII[BI)V
    .locals 8

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    iget-object v2, p0, Lcom/sun/crypto/provider/SunJCE_m;->a:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_m;->b:[B

    invoke-virtual {v0, v2, v7, v3, v7}, Lcom/sun/crypto/provider/SunJCE_e;->a([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->a:[B

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE_m;->a([B)V

    iput v7, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    :cond_0
    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_m;->b:[B

    iget v5, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    move p5, v0

    move p3, v1

    move p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CTR"

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

    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_m;->b()V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->a:Lcom/sun/crypto/provider/SunJCE_e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/sun/crypto/provider/SunJCE_e;->a(ZLjava/lang/String;[B)V

    return-void
.end method

.method final a([BII[BI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_m;->e([BII[BI)V

    return-void
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->c:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_m;->a:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    return-void
.end method

.method final b([BII[BI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sun/crypto/provider/SunJCE_m;->e([BII[BI)V

    return-void
.end method

.method final c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->d:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->d:[B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->e:[B

    :cond_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->a:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_m;->d:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->b:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_m;->e:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->f:I

    return-void
.end method

.method final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->d:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_m;->a:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->e:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_m;->b:[B

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->f:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_m;->c:I

    return-void
.end method
