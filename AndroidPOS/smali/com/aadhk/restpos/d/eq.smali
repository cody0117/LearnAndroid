.class public final Lcom/aadhk/restpos/d/eq;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/PayInOutActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/CashRegister;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 214
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/eq;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/eq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/eq;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/eq;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    check-cast p1, Lcom/aadhk/restpos/PayInOutActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    .line 66
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/eq;->f:I

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->j:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->k:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->l:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/eq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/eq;->h:Ljava/lang/String;

    .line 58
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->i:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0300c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/CashRegister;

    .line 148
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/PayInOutActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/PayInOutActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 156
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/c/bq;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTranxType()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/bq;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bq;->b()V

    new-instance v2, Lcom/aadhk/restpos/d/er;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/er;-><init>(Lcom/aadhk/restpos/d/eq;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bq;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/d/es;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/es;-><init>(Lcom/aadhk/restpos/d/eq;Lcom/aadhk/restpos/bean/CashRegister;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bq;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bq;->show()V

    .line 161
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/view/View;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->e:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget v0, p0, Lcom/aadhk/restpos/d/eq;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->g:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->i:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/eu;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/eu;-><init>(Lcom/aadhk/restpos/d/eq;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void

    .line 83
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/d/eq;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/aadhk/restpos/d/eq;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eq;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eq;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->g:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/d/eq;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->g:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/d/eq;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/eq;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eq;->g:Ljava/lang/String;

    goto :goto_0
.end method
