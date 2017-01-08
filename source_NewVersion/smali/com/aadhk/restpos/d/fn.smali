.class public final Lcom/aadhk/restpos/d/fn;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/SplitBillActivity;

.field private b:Landroid/widget/Button;

.field private c:Lcom/aadhk/restpos/b/u;

.field private d:Lcom/aadhk/restpos/b/n;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/aadhk/restpos/bean/Order;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ExpandableListView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/aadhk/restpos/d/fp;

.field private n:J

.field private o:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 302
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/fn;)Lcom/aadhk/restpos/d/fp;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->m:Lcom/aadhk/restpos/d/fp;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/fn;)Lcom/aadhk/restpos/SplitBillActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/fn;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/aadhk/restpos/d/fn;->h:I

    return v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/fn;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 115
    iget-wide v2, p0, Lcom/aadhk/restpos/d/fn;->n:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->l:Landroid/widget/TextView;

    const v2, 0x7f0901de

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->d:Lcom/aadhk/restpos/b/n;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fn;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aadhk/restpos/d/fn;->n:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/aadhk/restpos/b/n;->b(JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->e:Ljava/util/List;

    .line 121
    new-instance v0, Lcom/aadhk/restpos/d/fp;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fp;-><init>(Lcom/aadhk/restpos/d/fn;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->m:Lcom/aadhk/restpos/d/fp;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fn;->m:Lcom/aadhk/restpos/d/fp;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    move v0, v1

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/fn;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->l:Landroid/widget/TextView;

    const v2, 0x7f0901dd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->m:Lcom/aadhk/restpos/d/fp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fp;->notifyDataSetChanged()V

    .line 136
    :goto_2
    iget-short v0, p0, Lcom/aadhk/restpos/d/fn;->o:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    :goto_3
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/aadhk/restpos/b/u;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/fn;->c:Lcom/aadhk/restpos/b/u;

    .line 75
    new-instance v1, Lcom/aadhk/restpos/b/n;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/fn;->d:Lcom/aadhk/restpos/b/n;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->e()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->f:Lcom/aadhk/restpos/bean/Order;

    .line 77
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    check-cast p1, Lcom/aadhk/restpos/SplitBillActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    .line 83
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 146
    const-wide/16 v6, 0x0

    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 149
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v4

    int-to-double v8, v4

    mul-double/2addr v1, v8

    add-double/2addr v1, v6

    .line 152
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 153
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double v0, v1, v6

    move-wide v1, v0

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double v0, v1, v6

    move-wide v1, v0

    goto :goto_1

    .line 161
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->c:Lcom/aadhk/restpos/b/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aadhk/restpos/d/fn;->n:J

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/b/u;->a(JJLjava/util/List;D)V

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->f:Lcom/aadhk/restpos/bean/Order;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/fn;->n:J

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->b()V

    .line 172
    :cond_3
    :goto_2
    return-void

    .line 167
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 168
    const v1, 0x7f0901e9

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/fn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_2

    :cond_5
    move-wide v6, v1

    goto/16 :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/fn;->g:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/fn;->h:I

    .line 66
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleBillId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/aadhk/restpos/d/fn;->n:J

    .line 67
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleSplitType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    :goto_1
    iput-short v0, p0, Lcom/aadhk/restpos/d/fn;->o:S

    .line 68
    return-void

    .line 66
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 67
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
    .line 87
    const v0, 0x7f030088

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->i:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->i:Landroid/view/View;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->i:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->i:Landroid/view/View;

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->k:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->i:Landroid/view/View;

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fn;->l:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-short v0, p0, Lcom/aadhk/restpos/d/fn;->o:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->j:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/fo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fo;-><init>(Lcom/aadhk/restpos/d/fn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fn;->i:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fn;->a()V

    .line 112
    return-void
.end method
