.class final Lcom/sun/crypto/provider/SunJCE_y;
.super Lcom/sun/crypto/provider/SunJCE_w;
.source "ProGuard"

# interfaces
.implements Lcom/sun/crypto/provider/SunJCE_x;


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B

.field private d:[B

.field private e:[B


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/crypto/provider/SunJCE_w;-><init>()V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->a:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->b:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->c:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->d:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->e:[B

    return-void
.end method

.method private a([BI[BII)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    add-int v2, v1, p2

    aget-byte v2, p1, v2

    add-int v3, v1, p4

    aget-byte v3, p3, v3

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method final a(ZLjava/lang/String;[B)V
    .locals 7

    const/16 v4, 0x10

    const/16 v6, 0x80

    const/16 v5, 0x8

    const/4 v2, 0x0

    const-string v0, "DESede"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TripleDES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong algorithm: DESede or TripleDES required"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v1, v5, [B

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->a:[B

    invoke-static {p3, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Lcom/sun/crypto/provider/SunJCE_w;->a([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_y;->a:[B

    invoke-static {v0, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_y;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->a:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->c:[B

    :goto_0
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->b:[B

    invoke-static {p3, v5, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Lcom/sun/crypto/provider/SunJCE_w;->a([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_y;->b:[B

    invoke-static {v0, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->c:[B

    invoke-static {p3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Lcom/sun/crypto/provider/SunJCE_w;->a([B)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_y;->c:[B

    invoke-static {v0, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method final a([BI[BI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->a:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iput-boolean v2, p0, Lcom/sun/crypto/provider/SunJCE_w;->a5:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->d:[B

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/sun/crypto/provider/SunJCE_w;->c([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->b:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a5:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->d:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_y;->e:[B

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/sun/crypto/provider/SunJCE_w;->c([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->c:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iput-boolean v2, p0, Lcom/sun/crypto/provider/SunJCE_w;->a5:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->e:[B

    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_w;->c([BI[BI)V

    return-void
.end method

.method final b([BI[BI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->c:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iput-boolean v3, p0, Lcom/sun/crypto/provider/SunJCE_w;->a5:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->d:[B

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/sun/crypto/provider/SunJCE_w;->c([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->b:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iput-boolean v2, p0, Lcom/sun/crypto/provider/SunJCE_w;->a5:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->d:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_y;->e:[B

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/sun/crypto/provider/SunJCE_w;->c([BI[BI)V

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->a:[B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_w;->a4:[B

    iput-boolean v3, p0, Lcom/sun/crypto/provider/SunJCE_w;->a5:Z

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_y;->e:[B

    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/sun/crypto/provider/SunJCE_w;->c([BI[BI)V

    return-void
.end method
