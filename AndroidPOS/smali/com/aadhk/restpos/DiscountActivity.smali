.class public Lcom/aadhk/restpos/DiscountActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/ListView;

.field private p:Lcom/aadhk/restpos/g/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/DiscountActivity;)Lcom/aadhk/restpos/g/e;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->p:Lcom/aadhk/restpos/g/e;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/DiscountActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/DiscountActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/DiscountActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/n;

    iget-object v2, p0, Lcom/aadhk/restpos/DiscountActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/n;-><init>(Lcom/aadhk/restpos/DiscountActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DiscountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/DiscountActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DiscountActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0802db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DiscountActivity;->setTitle(I)V

    .line 44
    new-instance v0, Lcom/aadhk/restpos/g/e;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->p:Lcom/aadhk/restpos/g/e;

    .line 45
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DiscountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/r;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/r;-><init>(Lcom/aadhk/restpos/DiscountActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/aadhk/restpos/DiscountActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 52
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->p:Lcom/aadhk/restpos/g/e;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 294
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 295
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/DiscountActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    .line 184
    new-instance v1, Lcom/aadhk/restpos/c/o;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/o;-><init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/bean/Discount;)V

    const v2, 0x7f0802ea

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/o;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/o;->b()V

    new-instance v2, Lcom/aadhk/restpos/j;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/j;-><init>(Lcom/aadhk/restpos/DiscountActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/o;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/k;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/k;-><init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/bean/Discount;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/o;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/o;->show()V

    .line 185
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090301

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/aadhk/restpos/c/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/o;-><init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/bean/Discount;)V

    const v1, 0x7f0802e1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/o;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/m;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/m;-><init>(Lcom/aadhk/restpos/DiscountActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/o;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/o;->show()V

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
