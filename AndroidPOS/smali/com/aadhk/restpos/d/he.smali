.class public final Lcom/aadhk/restpos/d/he;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/aadhk/restpos/ReceiptListActivity;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/aadhk/restpos/g/v;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/he;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/d/he;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/g/v;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->j:Lcom/aadhk/restpos/g/v;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/ReceiptListActivity;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/he;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/hf;

    iget-object v2, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/hf;-><init>(Lcom/aadhk/restpos/d/he;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 92
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    goto :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget v0, p0, Lcom/aadhk/restpos/d/he;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/he;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->e:Ljava/lang/String;

    .line 106
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/he;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    .line 98
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/d/he;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/aadhk/restpos/d/he;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/he;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/he;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/he;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/he;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->e:Ljava/lang/String;

    goto :goto_2

    .line 100
    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/d/he;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->e:Ljava/lang/String;

    goto :goto_2

    .line 102
    :cond_6
    iget v0, p0, Lcom/aadhk/restpos/d/he;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->b()Lcom/aadhk/restpos/g/v;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->j:Lcom/aadhk/restpos/g/v;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->e()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/he;->i:I

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/he;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->b:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/hh;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/hh;-><init>(Lcom/aadhk/restpos/d/he;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReceiptListActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    .line 234
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 235
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/he;->setHasOptionsMenu(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/he;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/he;->a:Ljava/lang/String;

    .line 65
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->b:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->c:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->d:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->g:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->h:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const v0, 0x7f0300d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->k:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->k:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->l:Landroid/widget/ListView;

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->k:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->m:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->k:Landroid/view/View;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/he;->n:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->k:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/he;->o:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 155
    iget-object v1, p0, Lcom/aadhk/restpos/d/he;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/bean/Order;)V

    .line 156
    return-void
.end method
