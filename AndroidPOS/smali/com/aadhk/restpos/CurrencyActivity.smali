.class public Lcom/aadhk/restpos/CurrencyActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/ListView;

.field private p:Lcom/aadhk/restpos/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/CurrencyActivity;)Lcom/aadhk/restpos/g/b;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->p:Lcom/aadhk/restpos/g/b;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/CurrencyActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/restpos/bean/Currency;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/f;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Currency;->getId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/f;-><init>(Lcom/aadhk/restpos/CurrencyActivity;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/CurrencyActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/f;

    iget-object v2, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->setTitle(I)V

    .line 41
    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->setContentView(I)V

    .line 42
    new-instance v0, Lcom/aadhk/restpos/g/b;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->p:Lcom/aadhk/restpos/g/b;

    .line 43
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CurrencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/aadhk/restpos/CurrencyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 49
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->p:Lcom/aadhk/restpos/g/b;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 70
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 71
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
    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Currency;

    .line 120
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 121
    const-string v2, "currency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/CurrencyActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/aadhk/restpos/CurrencyActivity;->finish()V

    .line 124
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/CurrencyActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Currency;

    .line 96
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Currency;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/aadhk/restpos/c/k;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/aadhk/restpos/c/k;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Currency;I)V

    .line 98
    const v3, 0x7f08009b

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/k;->setTitle(I)V

    .line 99
    new-instance v3, Lcom/aadhk/restpos/b;

    invoke-direct {v3, p0, v1}, Lcom/aadhk/restpos/b;-><init>(Lcom/aadhk/restpos/CurrencyActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/k;->a(Lcom/aadhk/restpos/c/n;)V

    .line 106
    new-instance v1, Lcom/aadhk/restpos/c;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c;-><init>(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/restpos/bean/Currency;)V

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/c/k;->a(Lcom/aadhk/restpos/c/m;)V

    .line 112
    invoke-virtual {v2}, Lcom/aadhk/restpos/c/k;->show()V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 54
    const v1, 0x7f090301

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 55
    new-instance v1, Lcom/aadhk/restpos/c/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/aadhk/restpos/c/k;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Currency;I)V

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/k;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/a;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/a;-><init>(Lcom/aadhk/restpos/CurrencyActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/k;->a(Lcom/aadhk/restpos/c/l;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/k;->show()V

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 64
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/e;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/e;-><init>(Lcom/aadhk/restpos/CurrencyActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method
