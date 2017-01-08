.class public Lcom/aadhk/restpos/ListOrdersActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/GridView;

.field private n:Lcom/aadhk/restpos/a/ab;

.field private o:Lcom/aadhk/restpos/b/m;

.field private p:Lcom/aadhk/restpos/b/e;

.field private q:Landroid/view/MenuItem;

.field private r:Landroid/view/MenuItem;

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/ListOrdersActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->s:J

    return-wide v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/ListOrdersActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/ListOrdersActivity;Lcom/aadhk/restpos/a/ab;)Lcom/aadhk/restpos/a/ab;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->n:Lcom/aadhk/restpos/a/ab;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/ListOrdersActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/ListOrdersActivity;)Lcom/aadhk/restpos/b/m;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->o:Lcom/aadhk/restpos/b/m;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/ListOrdersActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/ListOrdersActivity;)Lcom/aadhk/restpos/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->n:Lcom/aadhk/restpos/a/ab;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->m:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->q:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->r:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListOrdersActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f09031d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListOrdersActivity;->setTitle(I)V

    .line 44
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    new-instance v0, Lcom/aadhk/restpos/b/m;

    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->o:Lcom/aadhk/restpos/b/m;

    .line 46
    new-instance v0, Lcom/aadhk/restpos/b/e;

    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->p:Lcom/aadhk/restpos/b/e;

    .line 48
    const v0, 0x7f0b023a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListOrdersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->m:Landroid/widget/GridView;

    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListOrdersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->o:Lcom/aadhk/restpos/b/m;

    iget-wide v2, p0, Lcom/aadhk/restpos/ListOrdersActivity;->s:J

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/m;->d(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/aadhk/restpos/a/ab;

    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/a/ab;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->n:Lcom/aadhk/restpos/a/ab;

    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->m:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->n:Lcom/aadhk/restpos/a/ab;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->m:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListOrdersActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    const v0, 0x7f0b029a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->q:Landroid/view/MenuItem;

    .line 76
    const v0, 0x7f0b029b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->r:Landroid/view/MenuItem;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->r:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 134
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 135
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
    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/aadhk/restpos/ListOrdersActivity;->p:Lcom/aadhk/restpos/b/e;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/e;->a(J)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v1

    .line 121
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 122
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v4, "bundleOrdered"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-string v4, "bundleOrder"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    const-string v0, "bundleCustomer"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const-class v0, Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/ListOrdersActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 84
    invoke-static {p0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    .line 110
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b029a

    if-ne v2, v3, :cond_2

    .line 87
    new-instance v0, Lcom/aadhk/restpos/c/bs;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bs;-><init>(Lcom/aadhk/restpos/ListOrdersActivity;)V

    .line 88
    new-instance v2, Lcom/aadhk/restpos/ac;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/ac;-><init>(Lcom/aadhk/restpos/ListOrdersActivity;Lcom/aadhk/restpos/c/bs;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/bs;->a(Lcom/aadhk/restpos/c/bu;)V

    .line 101
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bs;->show()V

    :cond_1
    :goto_1
    move v0, v1

    .line 110
    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b029b

    if-ne v2, v3, :cond_1

    .line 103
    iget-object v2, p0, Lcom/aadhk/restpos/ListOrdersActivity;->q:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->r:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/aadhk/restpos/ListOrdersActivity;->s:J

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->o:Lcom/aadhk/restpos/b/m;

    iget-wide v2, p0, Lcom/aadhk/restpos/ListOrdersActivity;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/b/m;->d(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/aadhk/restpos/a/ab;

    iget-object v2, p0, Lcom/aadhk/restpos/ListOrdersActivity;->l:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/a/ab;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->n:Lcom/aadhk/restpos/a/ab;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/ListOrdersActivity;->m:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/aadhk/restpos/ListOrdersActivity;->n:Lcom/aadhk/restpos/a/ab;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 70
    return-void
.end method
