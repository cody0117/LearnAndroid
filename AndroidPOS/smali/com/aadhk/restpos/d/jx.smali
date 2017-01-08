.class public final Lcom/aadhk/restpos/d/jx;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/SplitBillActivity;

.field private b:Landroid/widget/Button;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/aadhk/restpos/bean/Order;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ExpandableListView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/aadhk/restpos/d/jz;

.field private l:Lcom/aadhk/restpos/g/ab;

.field private m:J

.field private n:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 356
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jx;Lcom/aadhk/restpos/d/jz;)Lcom/aadhk/restpos/d/jz;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aadhk/restpos/d/jx;->k:Lcom/aadhk/restpos/d/jz;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jx;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aadhk/restpos/d/jx;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/d/jz;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->k:Lcom/aadhk/restpos/d/jz;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->d:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/jx;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/aadhk/restpos/d/jx;->m:J

    return-wide v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/g/ab;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->l:Lcom/aadhk/restpos/g/ab;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/jx;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->h:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/jx;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/jx;)S
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-short v0, p0, Lcom/aadhk/restpos/d/jx;->n:S

    return v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/jx;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/jx;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/jx;->m:J

    return-wide v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/jx;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/aadhk/restpos/d/jx;->f:I

    return v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/jx;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-wide v0, p0, Lcom/aadhk/restpos/d/jx;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->j:Landroid/widget/TextView;

    const v1, 0x7f08021d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    :goto_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/kd;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/d/kd;-><init>(Lcom/aadhk/restpos/d/jx;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 163
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->j:Landroid/widget/TextView;

    const v1, 0x7f08021c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->c()Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->l:Lcom/aadhk/restpos/g/ab;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->e()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->d:Lcom/aadhk/restpos/bean/Order;

    .line 73
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    check-cast p1, Lcom/aadhk/restpos/SplitBillActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    .line 79
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 169
    const-wide/16 v0, 0x0

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v2, p0, Lcom/aadhk/restpos/d/jx;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 172
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 175
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 176
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double v0, v1, v6

    move-wide v1, v0

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double v0, v1, v6

    move-wide v1, v0

    goto :goto_1

    :cond_1
    move-wide v0, v1

    move-wide v1, v0

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v4, Lcom/aadhk/restpos/d/kc;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/aadhk/restpos/d/kc;-><init>(Lcom/aadhk/restpos/d/jx;Ljava/util/List;D)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v1, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 186
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    :cond_3
    :goto_2
    return-void

    .line 188
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 189
    const v1, 0x7f080228

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 190
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/jx;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/jx;->f:I

    .line 64
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleBillId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/aadhk/restpos/d/jx;->m:J

    .line 65
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleSplitType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    :goto_1
    iput-short v0, p0, Lcom/aadhk/restpos/d/jx;->n:S

    .line 66
    return-void

    .line 64
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const v0, 0x7f0300a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->g:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->g:Landroid/view/View;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->b:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->g:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->h:Landroid/widget/ExpandableListView;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->g:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->i:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->g:Landroid/view/View;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jx;->j:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->h:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-short v0, p0, Lcom/aadhk/restpos/d/jx;->n:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->h:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/jy;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/jy;-><init>(Lcom/aadhk/restpos/d/jx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jx;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jx;->a()V

    .line 108
    return-void
.end method
