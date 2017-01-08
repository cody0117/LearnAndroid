.class public Lcom/aadhk/restpos/MgrTableGroupActivity;
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
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/ListView;

.field private p:Lcom/aadhk/restpos/g/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 251
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrTableGroupActivity;)Lcom/aadhk/restpos/g/m;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->p:Lcom/aadhk/restpos/g/m;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrTableGroupActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrTableGroupActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/av;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/av;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->a:Ljava/util/List;

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

.method static synthetic c(Lcom/aadhk/restpos/MgrTableGroupActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0300c1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f0801b1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->setTitle(I)V

    .line 41
    new-instance v0, Lcom/aadhk/restpos/g/m;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->p:Lcom/aadhk/restpos/g/m;

    .line 43
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bo;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bo;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->p:Lcom/aadhk/restpos/g/m;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 281
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 282
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
    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/MgrTableGroupActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    .line 130
    new-instance v1, Lcom/aadhk/restpos/c/p;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0801b3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/p;->b()V

    new-instance v2, Lcom/aadhk/restpos/bj;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/bj;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/bk;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/bk;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/p;->show()V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090301

    if-ne v1, v2, :cond_0

    .line 56
    new-instance v1, Lcom/aadhk/restpos/c/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/bm;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/bm;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/p;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/p;->show()V

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090313

    if-ne v1, v2, :cond_1

    .line 59
    new-instance v1, Lcom/aadhk/restpos/c/d;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801b4

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/bl;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/bl;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/d;->show()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
