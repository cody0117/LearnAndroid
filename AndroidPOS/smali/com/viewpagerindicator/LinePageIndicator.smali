.class public Lcom/viewpagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "ProGuard"

# interfaces
.implements Lcom/viewpagerindicator/f;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private e:I

.field private f:Z

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    sget v0, Lcom/viewpagerindicator/h;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    .line 52
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 66
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    sget v1, Lcom/viewpagerindicator/j;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 73
    sget v2, Lcom/viewpagerindicator/j;->e:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 74
    sget v3, Lcom/viewpagerindicator/k;->d:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 75
    sget v4, Lcom/viewpagerindicator/k;->c:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 76
    sget v5, Lcom/viewpagerindicator/k;->e:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 77
    sget v6, Lcom/viewpagerindicator/i;->c:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 80
    sget-object v6, Lcom/viewpagerindicator/m;->b:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 82
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    .line 83
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    .line 84
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    .line 85
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 86
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 163
    if-eqz v8, :cond_0

    .line 167
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-lt v0, v8, :cond_3

    .line 168
    add-int/lit8 v0, v8, -0x1

    iget-object v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    goto :goto_0

    .line 172
    :cond_3
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    add-float v9, v0, v1

    .line 173
    int-to-float v0, v8

    mul-float/2addr v0, v9

    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    sub-float v1, v0, v1

    .line 174
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 175
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    .line 178
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 180
    iget-boolean v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    if-eqz v4, :cond_5

    .line 181
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    move v6, v0

    .line 185
    :goto_1
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v8, :cond_0

    .line 186
    int-to-float v0, v7

    mul-float/2addr v0, v9

    add-float v1, v6, v0

    .line 187
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    add-float v3, v1, v0

    .line 188
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-ne v7, v0, :cond_4

    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    :goto_3
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 188
    :cond_4
    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    goto :goto_3

    :cond_5
    move v6, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, -0x8000

    .line 345
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-eq v1, v7, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_3

    :cond_0
    int-to-float v0, v2

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-ne v2, v7, :cond_4

    int-to-float v0, v3

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    .line 346
    return-void

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    if-ne v1, v6, :cond_1

    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    if-ne v2, v6, :cond_2

    int-to-float v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 326
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 331
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 333
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 403
    check-cast p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    .line 404
    invoke-virtual {p1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    iget v0, p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 406
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->requestLayout()V

    .line 407
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 413
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    iput v0, v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->a:I

    .line 414
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 197
    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 201
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 203
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    goto :goto_0

    .line 208
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 209
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 210
    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    sub-float v2, v0, v2

    .line 212
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-nez v3, :cond_4

    .line 213
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 214
    iput-boolean v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    .line 218
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-eqz v3, :cond_0

    .line 219
    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 220
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 230
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-nez v3, :cond_7

    .line 231
    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 232
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    .line 233
    int-to-float v5, v4

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    .line 234
    int-to-float v4, v4

    const/high16 v6, 0x40c0

    div-float/2addr v4, v6

    .line 236
    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 237
    if-eq v2, v8, :cond_0

    .line 238
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 241
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 242
    if-eq v2, v8, :cond_0

    .line 243
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 249
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 251
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 256
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 257
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 258
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    goto/16 :goto_0

    .line 263
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 264
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 265
    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    if-ne v3, v4, :cond_9

    .line 266
    if-nez v2, :cond_8

    move v0, v1

    .line 267
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 269
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
