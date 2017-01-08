.class public final Lcom/aadhk/restpos/d/aq;
.super Landroid/app/Fragment;
.source "ProGuard"


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

.field private b:Lcom/aadhk/restpos/g/h;

.field private c:Lcom/aadhk/restpos/KitchenActivity;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/aadhk/restpos/util/ObservableScrollView;

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/KitchenActivity;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 169
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 170
    if-nez v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 172
    iget-object v3, p0, Lcom/aadhk/restpos/d/aq;->d:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/aadhk/restpos/d/aq;->m:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/aq;->p:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/bean/Order;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 173
    iget-object v3, p0, Lcom/aadhk/restpos/d/aq;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v0}, Lcom/aadhk/restpos/d/aq;->a(Landroid/widget/LinearLayout;Lcom/aadhk/restpos/bean/Order;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 175
    :cond_0
    if-ne v1, v6, :cond_1

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 177
    iget-object v3, p0, Lcom/aadhk/restpos/d/aq;->e:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/aadhk/restpos/d/aq;->n:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/aq;->q:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/bean/Order;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 178
    iget-object v3, p0, Lcom/aadhk/restpos/d/aq;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v0}, Lcom/aadhk/restpos/d/aq;->a(Landroid/widget/LinearLayout;Lcom/aadhk/restpos/bean/Order;)V

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 182
    iget-object v3, p0, Lcom/aadhk/restpos/d/aq;->f:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/aadhk/restpos/d/aq;->o:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/aq;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/bean/Order;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 183
    iget-object v3, p0, Lcom/aadhk/restpos/d/aq;->l:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v0}, Lcom/aadhk/restpos/d/aq;->a(Landroid/widget/LinearLayout;Lcom/aadhk/restpos/bean/Order;)V

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->s:Lcom/aadhk/restpos/util/ObservableScrollView;

    if-eqz v0, :cond_3

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 190
    new-instance v1, Lcom/aadhk/restpos/d/au;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/au;-><init>(Lcom/aadhk/restpos/d/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_3
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/aadhk/restpos/bean/Order;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 140
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/KitchenActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030023

    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 142
    const v1, 0x7f090062

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 143
    const v2, 0x7f090063

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 144
    const v3, 0x7f090064

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 145
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget v6, p0, Lcom/aadhk/restpos/d/aq;->w:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    iget v6, p0, Lcom/aadhk/restpos/d/aq;->w:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 152
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 153
    new-instance v0, Lcom/aadhk/restpos/d/at;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/at;-><init>(Lcom/aadhk/restpos/d/aq;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 162
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 163
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 166
    :cond_2
    return-void
.end method

.method private a(Lcom/aadhk/restpos/bean/Order;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0803a7

    .line 108
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->f(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 109
    iget v2, p0, Lcom/aadhk/restpos/d/aq;->t:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 110
    const v0, 0x7f070092

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 118
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget v0, p0, Lcom/aadhk/restpos/d/aq;->w:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    iget v0, p0, Lcom/aadhk/restpos/d/aq;->w:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->f(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 123
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/KitchenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_1
    new-instance v0, Lcom/aadhk/restpos/d/as;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/as;-><init>(Lcom/aadhk/restpos/d/aq;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void

    .line 111
    :cond_0
    iget v2, p0, Lcom/aadhk/restpos/d/aq;->t:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/aadhk/restpos/d/aq;->u:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 112
    const v0, 0x7f070093

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 113
    :cond_1
    iget v2, p0, Lcom/aadhk/restpos/d/aq;->u:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/aadhk/restpos/d/aq;->v:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 114
    const v0, 0x7f070094

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 116
    :cond_2
    const v0, 0x7f070095

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 126
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/KitchenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/util/ObservableScrollView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->s:Lcom/aadhk/restpos/util/ObservableScrollView;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aadhk/restpos/d/aq;->a:Ljava/util/List;

    .line 201
    invoke-direct {p0}, Lcom/aadhk/restpos/d/aq;->a()V

    .line 202
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->a()Lcom/aadhk/restpos/g/h;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->b:Lcom/aadhk/restpos/g/h;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Ljava/util/List;

    .line 67
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    check-cast p1, Lcom/aadhk/restpos/KitchenActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    .line 60
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const v0, 0x7f0300b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x7f090299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/util/ObservableScrollView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->s:Lcom/aadhk/restpos/util/ObservableScrollView;

    .line 83
    const v0, 0x7f09029b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->g:Landroid/widget/LinearLayout;

    .line 84
    const v0, 0x7f0902a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->h:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f0902a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->i:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f09029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->d:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f0902a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->e:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f0902a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->f:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f09029f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->j:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f0902a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f0902a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->l:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f09029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->m:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0902a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->n:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0902a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->o:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f09029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->p:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0902a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->q:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0902a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->r:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->s:Lcom/aadhk/restpos/util/ObservableScrollView;

    new-instance v2, Lcom/aadhk/restpos/d/ar;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/ar;-><init>(Lcom/aadhk/restpos/d/aq;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/util/ObservableScrollView;->a(Lcom/aadhk/restpos/util/n;)V

    .line 104
    return-object v1
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->f()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/aq;->t:I

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->g()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/aq;->u:I

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->h()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/aq;->v:I

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->i()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/aq;->w:I

    .line 76
    invoke-direct {p0}, Lcom/aadhk/restpos/d/aq;->a()V

    .line 77
    return-void
.end method
