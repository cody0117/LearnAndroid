.class final Lcom/viewpagerindicator/d;
.super Landroid/widget/LinearLayout;
.source "ProGuard"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viewpagerindicator/d;->a:[I

    .line 24
    return-void

    .line 18
    nop

    :array_0
    .array-data 0x4
        0x29t 0x1t 0x1t 0x1t
        0x29t 0x3t 0x1t 0x1t
        0x2at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    sget-object v1, Lcom/viewpagerindicator/d;->a:[I

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/d;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/d;->f:I

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/d;->e:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/viewpagerindicator/d;->f:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/viewpagerindicator/d;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/viewpagerindicator/d;->d:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method private a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/d;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 168
    add-int/lit8 v1, p1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 168
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/viewpagerindicator/d;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/viewpagerindicator/d;->c:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/viewpagerindicator/d;->f:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v0, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/d;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 61
    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getOrientation()I

    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/d;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    if-ne v2, v5, :cond_2

    .line 66
    iget v3, p0, Lcom/viewpagerindicator/d;->d:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v3

    .line 74
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_1

    .line 75
    invoke-direct {p0, v3}, Lcom/viewpagerindicator/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    if-ne v2, v5, :cond_3

    .line 77
    iget v1, p0, Lcom/viewpagerindicator/d;->d:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 83
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 84
    return-void

    .line 69
    :cond_2
    iget v3, p0, Lcom/viewpagerindicator/d;->c:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 79
    :cond_3
    iget v1, p0, Lcom/viewpagerindicator/d;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/viewpagerindicator/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/d;->d:I

    sub-int/2addr v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/d;->a(Landroid/graphics/Canvas;I)V

    .line 95
    :cond_0
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/viewpagerindicator/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/d;->a(Landroid/graphics/Canvas;I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_5

    invoke-direct {p0, v2}, Lcom/viewpagerindicator/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/d;->c:I

    sub-int/2addr v0, v1

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/d;->b(Landroid/graphics/Canvas;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_6

    invoke-direct {p0, v1}, Lcom/viewpagerindicator/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/d;->b(Landroid/graphics/Canvas;I)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_4
.end method

.method public final setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/viewpagerindicator/d;->b:Landroid/graphics/drawable/Drawable;

    .line 47
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/d;->c:I

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/d;->d:I

    .line 54
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/d;->setWillNotDraw(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/viewpagerindicator/d;->requestLayout()V

    goto :goto_0

    .line 51
    :cond_2
    iput v0, p0, Lcom/viewpagerindicator/d;->c:I

    .line 52
    iput v0, p0, Lcom/viewpagerindicator/d;->d:I

    goto :goto_1
.end method
