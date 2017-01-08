.class public final Lcom/aadhk/restpos/d/en;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/TakeOrderActivity;

.field private b:Landroid/widget/Button;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/aadhk/restpos/bean/Order;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/aadhk/restpos/g/ad;

.field private l:Lcom/aadhk/restpos/g/h;

.field private m:Lcom/aadhk/restpos/util/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->e:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/en;Lcom/aadhk/restpos/bean/Order;)Lcom/aadhk/restpos/bean/Order;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/aadhk/restpos/d/en;->e:Lcom/aadhk/restpos/bean/Order;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/en;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/g/ad;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->k:Lcom/aadhk/restpos/g/ad;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->m:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    .line 137
    iget-object v2, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 138
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 139
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 140
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/en;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/en;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v4}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aadhk/restpos/util/o;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/en;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->j:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/d/en;->d:I

    iget-object v4, p0, Lcom/aadhk/restpos/d/en;->c:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/en;->c:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/en;->d:I

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->k()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->e:Lcom/aadhk/restpos/bean/Order;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->k:Lcom/aadhk/restpos/g/ad;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->z()Lcom/aadhk/restpos/g/h;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->l:Lcom/aadhk/restpos/g/h;

    .line 88
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 94
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    move v1, v2

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 168
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ep;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ep;-><init>(Lcom/aadhk/restpos/d/en;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1, v3, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 169
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    :cond_2
    :goto_1
    return-void

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080230

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->A()Lcom/aadhk/restpos/util/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->m:Lcom/aadhk/restpos/util/r;

    .line 63
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const v0, 0x7f03008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->h:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->i:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->j:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/en;->b:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    const v2, 0x7f09015f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->g:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/aadhk/restpos/a/q;

    iget-object v3, p0, Lcom/aadhk/restpos/d/en;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/aadhk/restpos/d/en;->k:Lcom/aadhk/restpos/g/ad;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/aadhk/restpos/a/q;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/d/en;Ljava/util/List;Lcom/aadhk/restpos/g/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v2, Lcom/aadhk/restpos/d/eo;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/eo;-><init>(Lcom/aadhk/restpos/d/en;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :goto_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/en;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/en;->a()V

    .line 100
    return-void
.end method
