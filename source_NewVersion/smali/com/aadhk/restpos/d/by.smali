.class public final Lcom/aadhk/restpos/d/by;
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

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/by;)Lcom/aadhk/restpos/PayInOutActivity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    check-cast p1, Lcom/aadhk/restpos/PayInOutActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    .line 62
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/by;->f:I

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->j:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->l:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->m:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/by;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "fromDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/by;->h:Ljava/lang/String;

    .line 54
    const-string v1, "toDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->i:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const v0, 0x7f0300a9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->e:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->e:Landroid/view/View;

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
    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/CashRegister;

    .line 120
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 122
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

    .line 123
    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/c/az;

    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTranxType()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/az;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/az;->b()V

    new-instance v2, Lcom/aadhk/restpos/d/bz;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/bz;-><init>(Lcom/aadhk/restpos/d/by;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/az;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/d/ca;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/ca;-><init>(Lcom/aadhk/restpos/d/by;Lcom/aadhk/restpos/bean/CashRegister;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/az;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/az;->show()V

    .line 130
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 5

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->e:Landroid/view/View;

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->e:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget v0, p0, Lcom/aadhk/restpos/d/by;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->g:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->i:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->c()Lcom/aadhk/restpos/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/by;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/by;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/by;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/aadhk/restpos/d/by;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/a/a;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->e:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_2
    return-void

    .line 80
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/d/by;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/aadhk/restpos/d/by;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/by;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/d/by;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/aadhk/restpos/d/by;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/by;->g:Ljava/lang/String;

    goto/16 :goto_0
.end method
