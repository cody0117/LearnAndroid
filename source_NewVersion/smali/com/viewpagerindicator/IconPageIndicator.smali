.class public Lcom/viewpagerindicator/IconPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "ProGuard"

# interfaces
.implements Lcom/viewpagerindicator/f;


# instance fields
.field private final a:Lcom/viewpagerindicator/d;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private d:Ljava/lang/Runnable;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 51
    new-instance v0, Lcom/viewpagerindicator/d;

    sget v1, Lcom/viewpagerindicator/h;->b:I

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/d;

    .line 52
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/IconPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/IconPageIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 82
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 99
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/IconPageIndicator;->e:I

    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/d;

    invoke-virtual {v0}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    .line 104
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 107
    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/d;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/d;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    new-instance v4, Lcom/viewpagerindicator/b;

    invoke-direct {v4, p0, v0}, Lcom/viewpagerindicator/b;-><init>(Lcom/viewpagerindicator/IconPageIndicator;Landroid/view/View;)V

    iput-object v4, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
