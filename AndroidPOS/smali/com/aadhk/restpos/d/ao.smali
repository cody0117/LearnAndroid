.class public final Lcom/aadhk/restpos/d/ao;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/al;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/al;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/aadhk/restpos/d/ao;->a:Lcom/aadhk/restpos/d/al;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 394
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/aadhk/restpos/d/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 362
    invoke-static {}, Lcom/aadhk/restpos/d/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 367
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-static {}, Lcom/aadhk/restpos/d/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 374
    if-nez p2, :cond_0

    .line 375
    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 376
    new-instance v2, Lcom/aadhk/restpos/d/ap;

    invoke-direct {v2, p0, v4}, Lcom/aadhk/restpos/d/ap;-><init>(Lcom/aadhk/restpos/d/ao;B)V

    .line 377
    const v1, 0x7f0902b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/d/ap;->a:Landroid/widget/TextView;

    .line 378
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/ao;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v2}, Lcom/aadhk/restpos/d/al;->f(Lcom/aadhk/restpos/d/al;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 384
    iget-object v2, v1, Lcom/aadhk/restpos/d/ap;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 385
    iget-object v2, v1, Lcom/aadhk/restpos/d/ap;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    :goto_1
    iget-object v1, v1, Lcom/aadhk/restpos/d/ap;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-object p2

    .line 380
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/d/ap;

    goto :goto_0

    .line 387
    :cond_1
    iget-object v2, v1, Lcom/aadhk/restpos/d/ap;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 388
    iget-object v2, v1, Lcom/aadhk/restpos/d/ap;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
