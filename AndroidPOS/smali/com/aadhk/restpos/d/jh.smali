.class public final Lcom/aadhk/restpos/d/jh;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/SplitBillActivity;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/aadhk/restpos/bean/Order;

.field private g:D

.field private h:D

.field private i:D

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/SplitBill;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/aadhk/restpos/d/jm;

.field private r:I

.field private s:S

.field private t:Lcom/aadhk/restpos/g/ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 655
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jh;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/aadhk/restpos/d/jh;->h:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jh;I)Ljava/util/List;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v4

    add-double v0, v1, v4

    :goto_1
    move-wide v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v3

    sub-double/2addr v3, v1

    iget v0, p0, Lcom/aadhk/restpos/d/jh;->r:I

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {v5, v3, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    move-wide v11, v3

    move-wide v3, v5

    move-wide v5, v11

    :goto_2
    if-ge v0, p1, :cond_3

    add-double/2addr v5, v3

    new-instance v8, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-direct {v8}, Lcom/aadhk/restpos/bean/SplitBill;-><init>()V

    iget-object v9, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/aadhk/restpos/bean/SplitBill;->setOrderId(J)V

    add-int/lit8 v9, p1, -0x1

    if-ne v0, v9, :cond_1

    iget-object v9, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v9

    sub-double/2addr v9, v1

    cmpl-double v9, v5, v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v9

    sub-double/2addr v9, v1

    invoke-static {v5, v6, v9, v10}, Lcom/aadhk/restpos/util/m;->a(DD)Z

    move-result v9

    if-nez v9, :cond_2

    const-wide v9, 0x3f847ae147ae147bL

    sub-double/2addr v3, v9

    :cond_1
    :goto_3
    invoke-virtual {v8, v3, v4}, Lcom/aadhk/restpos/bean/SplitBill;->setAmount(D)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v9

    sub-double/2addr v9, v1

    cmpg-double v9, v5, v9

    if-gez v9, :cond_1

    iget-object v9, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v9

    sub-double/2addr v9, v1

    invoke-static {v5, v6, v9, v10}, Lcom/aadhk/restpos/util/m;->a(DD)Z

    move-result v9

    if-nez v9, :cond_1

    const-wide v9, 0x3f847ae147ae147bL

    add-double/2addr v3, v9

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object v7

    :cond_6
    move-wide v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/jh;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/jh;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/aadhk/restpos/d/jh;->i:D

    return-wide p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/g/ab;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->t:Lcom/aadhk/restpos/g/ab;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/jh;Ljava/util/List;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/jh;->h:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/jh;->i:D

    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v0

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v4

    int-to-double v10, v4

    mul-double/2addr v0, v10

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v10, v13

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    add-double/2addr v0, v10

    goto :goto_1

    :cond_1
    sub-double/2addr v0, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    iget-wide v10, p0, Lcom/aadhk/restpos/d/jh;->h:D

    iget v4, p0, Lcom/aadhk/restpos/d/jh;->r:I

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v13

    add-double/2addr v10, v13

    iput-wide v10, p0, Lcom/aadhk/restpos/d/jh;->h:D

    :cond_3
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    iget-wide v13, p0, Lcom/aadhk/restpos/d/jh;->i:D

    iget v10, p0, Lcom/aadhk/restpos/d/jh;->r:I

    move-wide v6, v0

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v0

    add-double/2addr v0, v13

    iput-wide v0, p0, Lcom/aadhk/restpos/d/jh;->i:D

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/jh;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const-wide/16 v3, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 46
    new-instance v0, Lcom/aadhk/restpos/d/jm;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/jm;-><init>(Lcom/aadhk/restpos/d/jh;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->q:Lcom/aadhk/restpos/d/jm;

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jh;->q:Lcom/aadhk/restpos/d/jm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->q:Lcom/aadhk/restpos/d/jm;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/jm;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v7

    add-double v0, v1, v7

    move-wide v1, v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v6

    sub-double v0, v6, v1

    iput-wide v0, p0, Lcom/aadhk/restpos/d/jh;->g:D

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/jh;->r:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v6

    iget-object v2, p0, Lcom/aadhk/restpos/d/jh;->j:Ljava/lang/String;

    invoke-static {v1, v6, v7, v2}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/jh;->r:I

    iget-wide v6, p0, Lcom/aadhk/restpos/d/jh;->g:D

    iget-object v2, p0, Lcom/aadhk/restpos/d/jh;->j:Ljava/lang/String;

    invoke-static {v1, v6, v7, v2}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/aadhk/restpos/d/jh;->g:D

    cmpl-double v0, v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    iget-wide v0, p0, Lcom/aadhk/restpos/d/jh;->g:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    if-ne v0, v10, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5
    iget-wide v0, p0, Lcom/aadhk/restpos/d/jh;->g:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    if-ne v0, v10, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->d:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6
    return-void

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->e:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_9
    move v0, v5

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/jh;)S
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    return v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/jh;)D
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/aadhk/restpos/d/jh;->h:D

    return-wide v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/jh;)D
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/aadhk/restpos/d/jh;->i:D

    return-wide v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/jh;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/aadhk/restpos/d/jh;->r:I

    return v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/jh;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jt;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/jt;-><init>(Lcom/aadhk/restpos/d/jh;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 311
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->e()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->f:Lcom/aadhk/restpos/bean/Order;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->c()Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->t:Lcom/aadhk/restpos/g/ab;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-short v1, p0, Lcom/aadhk/restpos/d/jh;->s:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 84
    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const v1, 0x7f080224

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    check-cast p1, Lcom/aadhk/restpos/SplitBillActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    .line 134
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 371
    new-instance v0, Lcom/aadhk/restpos/c/dp;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/dp;-><init>(Landroid/content/Context;)V

    .line 372
    const v1, 0x7f08021e

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dp;->setTitle(I)V

    .line 373
    new-instance v1, Lcom/aadhk/restpos/d/jj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/jj;-><init>(Lcom/aadhk/restpos/d/jh;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dp;->a(Lcom/aadhk/product/library/b/f;)V

    .line 383
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dp;->show()V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 385
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/js;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/js;-><init>(Lcom/aadhk/restpos/d/jh;B)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1, v3, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 386
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 388
    iget-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 389
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/SplitBillActivity;->b(J)V

    goto :goto_0

    .line 391
    :cond_3
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/aadhk/restpos/d/jh;->g:D

    iget v6, p0, Lcom/aadhk/restpos/d/jh;->r:I

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;DDI)V

    .line 392
    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->setTitle(I)V

    .line 393
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->b()V

    .line 394
    new-instance v1, Lcom/aadhk/restpos/d/jk;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/jk;-><init>(Lcom/aadhk/restpos/d/jh;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->a(Lcom/aadhk/product/library/b/f;)V

    .line 404
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    goto :goto_0

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    .line 411
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 418
    :cond_6
    new-array v1, v1, [Ljava/lang/String;

    .line 419
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 420
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 421
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->j:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/aadhk/restpos/util/p;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 419
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 425
    :cond_8
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v2, v1}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 426
    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(I)V

    .line 427
    new-instance v1, Lcom/aadhk/restpos/d/jl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/jl;-><init>(Lcom/aadhk/restpos/d/jh;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 441
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    goto/16 :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/jh;->j:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/jh;->r:I

    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleSplitType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    :goto_0
    iput-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 138
    const v0, 0x7f0300a4

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f09027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f090280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f09027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->d:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->e:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->o:Landroid/widget/ListView;

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->p:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f090281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->n:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    const v1, 0x7f090282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/jh;->m:Landroid/widget/TextView;

    .line 153
    iget-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->l:Landroid/view/View;

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->k:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/aadhk/restpos/bean/SplitBill;

    .line 170
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-short v0, p0, Lcom/aadhk/restpos/d/jh;->s:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/SplitBillActivity;->a(J)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jh;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/aadhk/restpos/d/jh;->g:D

    iget v6, p0, Lcom/aadhk/restpos/d/jh;->r:I

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;DDI)V

    .line 175
    const v1, 0x7f08021d

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->setTitle(I)V

    .line 176
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->b()V

    .line 177
    new-instance v1, Lcom/aadhk/restpos/d/ji;

    invoke-direct {v1, p0, v7, p3}, Lcom/aadhk/restpos/d/ji;-><init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/j;->a(Lcom/aadhk/product/library/b/f;)V

    .line 185
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/jh;->a()V

    .line 165
    return-void
.end method
