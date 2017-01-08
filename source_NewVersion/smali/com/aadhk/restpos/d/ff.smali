.class public final Lcom/aadhk/restpos/d/ff;
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

.field private j:D

.field private k:Ljava/lang/String;

.field private l:Lcom/aadhk/restpos/b/u;

.field private m:Lcom/aadhk/restpos/b/m;

.field private n:Lcom/aadhk/restpos/b/n;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/SplitBill;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ListView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/aadhk/restpos/d/fk;

.field private v:I

.field private w:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ff;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/aadhk/restpos/d/ff;->i:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/u;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->l:Lcom/aadhk/restpos/b/u;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ff;I)Ljava/util/List;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->g:D

    iget v2, p0, Lcom/aadhk/restpos/d/ff;->v:I

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v3, v0, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    move-wide v9, v0

    move-wide v0, v2

    move-wide v2, v9

    :goto_0
    if-ge v4, p1, :cond_1

    add-double/2addr v2, v0

    new-instance v6, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/SplitBill;-><init>()V

    iget-object v7, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/SplitBill;->setOrderId(J)V

    add-int/lit8 v7, p1, -0x1

    if-ne v4, v7, :cond_0

    iget-wide v7, p0, Lcom/aadhk/restpos/d/ff;->g:D

    invoke-static {v2, v3, v7, v8}, Lcom/aadhk/restpos/f/h;->a(DD)Z

    move-result v7

    if-nez v7, :cond_0

    const-wide v7, 0x3f847ae147ae147bL

    add-double/2addr v0, v7

    :cond_0
    invoke-virtual {v6, v0, v1}, Lcom/aadhk/restpos/bean/SplitBill;->setAmount(D)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ff;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ff;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/aadhk/restpos/d/ff;->j:D

    return-wide p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ff;Ljava/util/List;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ff;->i:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ff;->j:D

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

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

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

    iget-wide v10, p0, Lcom/aadhk/restpos/d/ff;->i:D

    iget v4, p0, Lcom/aadhk/restpos/d/ff;->v:I

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/f/h;->a(DDIZ)D

    move-result-wide v13

    add-double/2addr v10, v13

    iput-wide v10, p0, Lcom/aadhk/restpos/d/ff;->i:D

    :cond_3
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    iget-wide v13, p0, Lcom/aadhk/restpos/d/ff;->j:D

    iget v10, p0, Lcom/aadhk/restpos/d/ff;->v:I

    move-wide v6, v0

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/aadhk/restpos/f/h;->a(DDIZ)D

    move-result-wide v0

    add-double/2addr v0, v13

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ff;->j:D

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/n;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->n:Lcom/aadhk/restpos/b/n;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ff;)D
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->i:D

    return-wide v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/ff;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/aadhk/restpos/d/ff;->v:I

    return v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/ff;)D
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->j:D

    return-wide v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/SplitBillActivity;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/ff;)S
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    return v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/ff;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const-wide/16 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->l:Lcom/aadhk/restpos/b/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/u;->b(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->m:Lcom/aadhk/restpos/b/m;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/m;->e(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ff;->g:D

    .line 185
    new-instance v0, Lcom/aadhk/restpos/d/fk;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fk;-><init>(Lcom/aadhk/restpos/d/ff;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->u:Lcom/aadhk/restpos/d/fk;

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->u:Lcom/aadhk/restpos/d/fk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->u:Lcom/aadhk/restpos/d/fk;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fk;->notifyDataSetChanged()V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    .line 201
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v6

    add-double v0, v1, v6

    move-wide v1, v0

    goto :goto_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->c:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_1
    iget-wide v5, p0, Lcom/aadhk/restpos/d/ff;->g:D

    sub-double v0, v5, v1

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ff;->h:D

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ff;->v:I

    iget-wide v5, p0, Lcom/aadhk/restpos/d/ff;->g:D

    iget-object v2, p0, Lcom/aadhk/restpos/d/ff;->k:Ljava/lang/String;

    invoke-static {v1, v5, v6, v2}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ff;->v:I

    iget-wide v5, p0, Lcom/aadhk/restpos/d/ff;->h:D

    iget-object v2, p0, Lcom/aadhk/restpos/d/ff;->k:Ljava/lang/String;

    invoke-static {v1, v5, v6, v2}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->h:D

    cmpl-double v0, v0, v3

    if-nez v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->e:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :goto_2
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->h:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_2

    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    if-ne v0, v10, :cond_5

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    :goto_3
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->h:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    if-ne v0, v10, :cond_6

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->d:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    :goto_4
    return-void

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->e:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->d:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->e()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/aadhk/restpos/b/u;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/ff;->l:Lcom/aadhk/restpos/b/u;

    .line 85
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/ff;->m:Lcom/aadhk/restpos/b/m;

    .line 86
    new-instance v1, Lcom/aadhk/restpos/b/n;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/ff;->n:Lcom/aadhk/restpos/b/n;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    iget-short v1, p0, Lcom/aadhk/restpos/d/ff;->w:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 90
    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const v1, 0x7f0901e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 119
    check-cast p1, Lcom/aadhk/restpos/SplitBillActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    .line 120
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 231
    new-instance v0, Lcom/aadhk/restpos/c/cb;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/cb;-><init>(Landroid/content/Context;)V

    .line 232
    const v1, 0x7f0901df

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cb;->setTitle(I)V

    .line 233
    new-instance v1, Lcom/aadhk/restpos/d/fh;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fh;-><init>(Lcom/aadhk/restpos/d/ff;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cb;->a(Lcom/aadhk/product/library/b/f;)V

    .line 244
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cb;->show()V

    .line 275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v1, v7

    .line 277
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->k:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/aadhk/restpos/f/j;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->l:Lcom/aadhk/restpos/b/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/u;->a(J)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 249
    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    if-ne v0, v3, :cond_2

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->a()V

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ff;->a()V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 254
    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    if-ne v0, v3, :cond_4

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/SplitBillActivity;->b(J)V

    goto :goto_0

    .line 257
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/m;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/aadhk/restpos/d/ff;->h:D

    iget v6, p0, Lcom/aadhk/restpos/d/ff;->v:I

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/c/m;-><init>(Landroid/content/Context;DDI)V

    .line 258
    const v1, 0x7f0901dd

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/m;->setTitle(I)V

    .line 259
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/m;->b()V

    .line 260
    new-instance v1, Lcom/aadhk/restpos/d/fi;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fi;-><init>(Lcom/aadhk/restpos/d/ff;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/m;->a(Lcom/aadhk/product/library/b/f;)V

    .line 272
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/m;->show()V

    goto/16 :goto_0

    .line 280
    :cond_5
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 281
    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(I)V

    .line 282
    new-instance v1, Lcom/aadhk/restpos/d/fj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fj;-><init>(Lcom/aadhk/restpos/d/ff;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 315
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 317
    :cond_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/ff;->k:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ff;->v:I

    .line 76
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ff;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ff;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleSplitType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    :goto_0
    iput-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    .line 77
    return-void

    .line 76
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

    .line 124
    const v0, 0x7f030087

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b0217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->c:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->d:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->e:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->s:Landroid/widget/ListView;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->s:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->t:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->r:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    const v1, 0x7f0b021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ff;->q:Landroid/widget/TextView;

    .line 139
    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->p:Landroid/view/View;

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->b:Landroid/widget/Button;

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
    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->o:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/aadhk/restpos/bean/SplitBill;

    .line 156
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-short v0, p0, Lcom/aadhk/restpos/d/ff;->w:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/SplitBillActivity;->a(J)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ff;->h:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 162
    new-instance v0, Lcom/aadhk/restpos/c/m;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ff;->a:Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/aadhk/restpos/d/ff;->h:D

    iget v6, p0, Lcom/aadhk/restpos/d/ff;->v:I

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/c/m;-><init>(Landroid/content/Context;DDI)V

    .line 163
    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/m;->setTitle(I)V

    .line 164
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/m;->b()V

    .line 165
    new-instance v1, Lcom/aadhk/restpos/d/fg;

    invoke-direct {v1, p0, v7, p3}, Lcom/aadhk/restpos/d/fg;-><init>(Lcom/aadhk/restpos/d/ff;Lcom/aadhk/restpos/bean/SplitBill;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/m;->a(Lcom/aadhk/product/library/b/f;)V

    .line 175
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/m;->show()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 150
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ff;->a()V

    .line 151
    return-void
.end method
