.class final Lcom/viewpagerindicator/q;
.super Landroid/widget/TextView;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/TabPageIndicator;

    .line 287
    const/4 v0, 0x0

    sget v1, Lcom/viewpagerindicator/h;->d:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 288
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/q;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput p1, p0, Lcom/viewpagerindicator/q;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/viewpagerindicator/q;->b:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 295
    iget-object v0, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->c(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/q;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicator;->c(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->c(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 298
    :cond_0
    return-void
.end method
