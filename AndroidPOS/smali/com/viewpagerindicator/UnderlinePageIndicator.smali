.class public Lcom/viewpagerindicator/UnderlinePageIndicator;
.super Landroid/view/View;
.source "ProGuard"

# interfaces
.implements Lcom/viewpagerindicator/f;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:F

.field private m:I

.field private n:Z

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    sget v0, Lcom/viewpagerindicator/h;->f:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    .line 56
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    .line 60
    new-instance v0, Lcom/viewpagerindicator/v;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/v;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    .line 85
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    sget v1, Lcom/viewpagerindicator/i;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 92
    sget v2, Lcom/viewpagerindicator/l;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 93
    sget v3, Lcom/viewpagerindicator/l;->e:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 94
    sget v4, Lcom/viewpagerindicator/j;->k:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 97
    sget-object v4, Lcom/viewpagerindicator/m;->e:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 99
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-boolean v5, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    if-eq v1, v5, :cond_1

    iput-boolean v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_1
    :goto_1
    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 101
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:I

    .line 102
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:I

    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:I

    div-int/lit8 v0, v0, 0x1e

    div-int v0, v8, v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->e:I

    .line 104
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    goto :goto_0

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/viewpagerindicator/UnderlinePageIndicator;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/viewpagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c(Lcom/viewpagerindicator/UnderlinePageIndicator;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->e:I

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 170
    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    if-lt v1, v0, :cond_3

    .line 171
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v0, v2, v0

    .line 177
    int-to-float v1, v1

    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->j:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 178
    add-float v3, v1, v0

    .line 179
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 180
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 181
    iget-object v5, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:I

    .line 318
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    .line 326
    iput p2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->j:F

    .line 327
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 328
    if-lez p3, :cond_2

    .line 329
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 330
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 337
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 340
    :cond_1
    return-void

    .line 331
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:I

    if-nez v0, :cond_0

    .line 345
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->j:F

    .line 347
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 348
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 353
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    check-cast p1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    .line 363
    invoke-virtual {p1}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 364
    iget v0, p1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    .line 365
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->requestLayout()V

    .line 366
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 370
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 372
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    iput v0, v1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->a:I

    .line 373
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 189
    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 193
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    goto :goto_0

    .line 200
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 201
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 202
    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    sub-float v2, v0, v2

    .line 204
    iget-boolean v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:Z

    if-nez v3, :cond_4

    .line 205
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 206
    iput-boolean v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:Z

    .line 210
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:Z

    if-eqz v3, :cond_0

    .line 211
    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    .line 212
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:Z

    if-nez v3, :cond_7

    .line 223
    iget-object v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 224
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v4

    .line 225
    int-to-float v5, v4

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    .line 226
    int-to-float v4, v4

    const/high16 v6, 0x40c0

    div-float/2addr v4, v6

    .line 228
    iget v6, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 229
    if-eq v2, v8, :cond_0

    .line 230
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 233
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 234
    if-eq v2, v8, :cond_0

    .line 235
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 241
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:Z

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    .line 243
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 248
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 249
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    .line 250
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    goto/16 :goto_0

    .line 255
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 256
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 257
    iget v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    if-ne v3, v4, :cond_9

    .line 258
    if-nez v2, :cond_8

    move v0, v1

    .line 259
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    .line 261
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    goto/16 :goto_0

    .line 193
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
