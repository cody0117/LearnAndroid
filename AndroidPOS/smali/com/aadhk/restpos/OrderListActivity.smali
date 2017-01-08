.class public Lcom/aadhk/restpos/OrderListActivity;
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
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/GridView;

.field private q:Lcom/aadhk/restpos/a/ah;

.field private r:Landroid/view/MenuItem;

.field private s:Landroid/view/MenuItem;

.field private t:J

.field private u:Lcom/aadhk/restpos/g/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/OrderListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/aadhk/restpos/OrderListActivity;->t:J

    return-wide v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/OrderListActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/aadhk/restpos/OrderListActivity;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/a/ah;)Lcom/aadhk/restpos/a/ah;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/OrderListActivity;->q:Lcom/aadhk/restpos/a/ah;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/OrderListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/OrderListActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/g/o;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->u:Lcom/aadhk/restpos/g/o;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->q:Lcom/aadhk/restpos/a/ah;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/OrderListActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->p:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/OrderListActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->r:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/OrderListActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->s:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/o;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->u:Lcom/aadhk/restpos/g/o;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0300bb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/OrderListActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f08037d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/OrderListActivity;->setTitle(I)V

    .line 46
    new-instance v0, Lcom/aadhk/restpos/g/o;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->u:Lcom/aadhk/restpos/g/o;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->o:Ljava/util/List;

    const v0, 0x7f0902ae

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->p:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->p:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bv;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/bv;-><init>(Lcom/aadhk/restpos/OrderListActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/OrderListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    const v0, 0x7f09008b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->r:Landroid/view/MenuItem;

    .line 75
    const v0, 0x7f09031f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->s:Landroid/view/MenuItem;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->s:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 77
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->u:Lcom/aadhk/restpos/g/o;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 212
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 213
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x0

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 109
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 110
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/bu;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/bu;-><init>(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/bean/Order;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 111
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v5}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v5, v1}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 114
    invoke-virtual {p0}, Lcom/aadhk/restpos/OrderListActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 83
    invoke-static {p0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    .line 103
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f09008b

    if-ne v2, v3, :cond_2

    .line 86
    new-instance v0, Lcom/aadhk/restpos/c/ct;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ct;-><init>(Lcom/aadhk/restpos/OrderListActivity;)V

    .line 87
    new-instance v2, Lcom/aadhk/restpos/bs;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/bs;-><init>(Lcom/aadhk/restpos/OrderListActivity;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ct;->a(Lcom/aadhk/restpos/c/cv;)V

    .line 95
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ct;->show()V

    :cond_1
    :goto_1
    move v0, v1

    .line 103
    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f09031f

    if-ne v2, v3, :cond_1

    .line 97
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/aadhk/restpos/OrderListActivity;->t:J

    .line 98
    iget-object v2, p0, Lcom/aadhk/restpos/OrderListActivity;->r:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    new-instance v0, Lcom/aadhk/restpos/a/ah;

    iget-object v2, p0, Lcom/aadhk/restpos/OrderListActivity;->o:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/a/ah;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->q:Lcom/aadhk/restpos/a/ah;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/OrderListActivity;->p:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/aadhk/restpos/OrderListActivity;->q:Lcom/aadhk/restpos/a/ah;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 64
    return-void
.end method
