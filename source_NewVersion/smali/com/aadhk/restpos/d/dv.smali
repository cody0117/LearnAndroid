.class public final Lcom/aadhk/restpos/d/dv;
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

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/database/sqlite/SQLiteDatabase;

.field private l:Lcom/aadhk/restpos/b/m;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ListView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Ljava/util/List;
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
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dv;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/dv;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->g()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/dv;->j:I

    .line 55
    new-instance v0, Lcom/aadhk/restpos/b/m;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dv;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->l:Lcom/aadhk/restpos/b/m;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dv;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->l:Lcom/aadhk/restpos/b/m;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dv;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dv;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/dv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->q:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/dw;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/dw;-><init>(Lcom/aadhk/restpos/d/dv;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/aadhk/restpos/d/dv;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v4

    add-double v0, v1, v4

    move-wide v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/d/dv;->j:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->i:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->e:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->p:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/dv;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0901b1

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dv;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aadhk/restpos/d/dv;->h:I

    iget-object v5, p0, Lcom/aadhk/restpos/d/dv;->g:Ljava/lang/String;

    invoke-static {v4, v1, v2, v5}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void

    .line 57
    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/d/dv;->j:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/aadhk/restpos/d/dv;->j:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/dv;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/dv;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->e:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/aadhk/restpos/d/dv;->j:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->e:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/aadhk/restpos/d/dv;->j:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->e:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReceiptListActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    .line 225
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 226
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/dv;->setHasOptionsMenu(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/dv;->a:Ljava/lang/String;

    .line 68
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->b:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->g:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->l()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/dv;->h:I

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->c:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->d:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->i:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->m:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->m:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->n:Landroid/widget/ListView;

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->m:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->o:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->m:Landroid/view/View;

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dv;->p:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->m:Landroid/view/View;

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
    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->q:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 120
    iget-object v1, p0, Lcom/aadhk/restpos/d/dv;->f:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/bean/Order;)V

    .line 150
    return-void
.end method
