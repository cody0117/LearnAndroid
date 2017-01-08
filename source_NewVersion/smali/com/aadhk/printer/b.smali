.class public final Lcom/aadhk/printer/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/graphics/Bitmap;)Lcom/aadhk/printer/a;
    .locals 14
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 34
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    move v3, v1

    move v0, v1

    .line 37
    :goto_0
    if-lt v3, v5, :cond_0

    .line 58
    new-instance v0, Lcom/aadhk/printer/a;

    invoke-direct {v0}, Lcom/aadhk/printer/a;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/printer/a;->a(I)V

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/printer/a;->b(I)V

    .line 61
    invoke-virtual {v0, v6}, Lcom/aadhk/printer/a;->a(Ljava/util/BitSet;)V

    .line 62
    return-object v0

    :cond_0
    move v2, v0

    move v0, v1

    .line 38
    :goto_1
    if-lt v0, v4, :cond_1

    .line 37
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v0, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 43
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 44
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 48
    const-wide v10, 0x3fd322d0e5604189L

    int-to-double v12, v8

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe2c8b439581062L

    int-to-double v8, v9

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    const-wide v10, 0x3fbd2f1a9fbe76c9L

    int-to-double v12, v7

    mul-double/2addr v10, v12

    add-double v7, v8, v10

    double-to-int v7, v7

    .line 50
    const/16 v8, 0x37

    if-ge v7, v8, :cond_2

    .line 51
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
