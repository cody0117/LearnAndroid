.class public Lcom/aadhk/product/view/StretchyImageView;
.super Landroid/widget/ImageView;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 31
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 40
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 41
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 42
    if-gtz v3, :cond_2

    move v3, v0

    .line 44
    :cond_2
    if-gtz v2, :cond_3

    move v2, v0

    .line 48
    :cond_3
    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 51
    if-eq v4, v6, :cond_4

    move v2, v0

    .line 54
    :goto_1
    if-eq v5, v6, :cond_5

    .line 56
    :goto_2
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getPaddingLeft()I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getPaddingRight()I

    move-result v4

    .line 58
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getPaddingTop()I

    move-result v5

    .line 59
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getPaddingBottom()I

    move-result v6

    .line 62
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getMeasuredWidth()I

    move-result v7

    .line 63
    invoke-virtual {p0}, Lcom/aadhk/product/view/StretchyImageView;->getMeasuredHeight()I

    move-result v8

    .line 65
    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 68
    sub-int v0, v8, v5

    sub-int/2addr v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 69
    invoke-virtual {p0, v0, v8}, Lcom/aadhk/product/view/StretchyImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 51
    goto :goto_1

    :cond_5
    move v0, v1

    .line 54
    goto :goto_2

    .line 71
    :cond_6
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 73
    sub-int v0, v7, v1

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    .line 74
    invoke-virtual {p0, v7, v0}, Lcom/aadhk/product/view/StretchyImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
