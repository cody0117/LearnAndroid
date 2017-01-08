.class final Lcom/sun/crypto/provider/SunJCE_q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sun/crypto/provider/SunJCE_j;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/crypto/provider/SunJCE_q;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_q;->a:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_q;->a:I

    rem-int v1, p1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a([BII)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Buffer too small to hold padding"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    new-array v1, p3, [B

    sget-object v2, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v2, p3, -0x1

    aput-byte v0, v1, v2

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final b([BII)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_1

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_q;->a:I

    if-gt v1, v2, :cond_1

    add-int v2, p2, p3

    sub-int v1, v2, v1

    if-lt v1, p2, :cond_1

    move v0, v1

    goto :goto_0
.end method
