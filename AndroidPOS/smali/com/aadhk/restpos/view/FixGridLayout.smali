.class public Lcom/aadhk/restpos/view/FixGridLayout;
.super Landroid/view/ViewGroup;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/view/FixGridLayout;->getWidth()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/aadhk/restpos/view/FixGridLayout;->getHeight()I

    move-result v1

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 120
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 130
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iget v5, p0, Lcom/aadhk/restpos/view/FixGridLayout;->a:I

    .line 43
    iget v6, p0, Lcom/aadhk/restpos/view/FixGridLayout;->b:I

    .line 44
    sub-int v0, p4, p2

    div-int/2addr v0, v5

    .line 45
    if-gez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :cond_0
    const/4 v4, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/aadhk/restpos/view/FixGridLayout;->getChildCount()I

    move-result v7

    .line 52
    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v13

    :goto_0
    if-ge v4, v7, :cond_2

    .line 53
    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/view/FixGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 56
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 58
    sub-int v11, v5, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    .line 59
    sub-int v12, v6, v10

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    .line 63
    add-int/2addr v9, v11

    add-int/2addr v10, v12

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 65
    add-int/lit8 v8, v0, -0x1

    if-lt v1, v8, :cond_1

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    add-int/2addr v2, v6

    .line 52
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    add-int/2addr v3, v5

    goto :goto_1

    .line 75
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, -0x8000

    .line 83
    iget v0, p0, Lcom/aadhk/restpos/view/FixGridLayout;->a:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    iget v0, p0, Lcom/aadhk/restpos/view/FixGridLayout;->b:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 86
    invoke-virtual {p0}, Lcom/aadhk/restpos/view/FixGridLayout;->getChildCount()I

    move-result v3

    .line 88
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/view/FixGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget v0, p0, Lcom/aadhk/restpos/view/FixGridLayout;->a:I

    mul-int/2addr v0, v3

    invoke-static {v0, p1}, Lcom/aadhk/restpos/view/FixGridLayout;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/aadhk/restpos/view/FixGridLayout;->b:I

    mul-int/2addr v1, v3

    invoke-static {v1, p2}, Lcom/aadhk/restpos/view/FixGridLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/view/FixGridLayout;->setMeasuredDimension(II)V

    .line 107
    return-void
.end method
