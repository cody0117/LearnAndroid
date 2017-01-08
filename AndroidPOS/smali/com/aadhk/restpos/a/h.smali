.class public final Lcom/aadhk/restpos/a/h;
.super Lcom/aadhk/restpos/a/ag;
.source "ProGuard"


# instance fields
.field private h:Lcom/aadhk/restpos/TakeOrderActivity;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/aadhk/restpos/bean/Category;

.field private n:Lcom/aadhk/restpos/bean/OrderItem;

.field private o:Lcom/aadhk/restpos/util/r;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/aadhk/restpos/g/ad;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Lcom/aadhk/restpos/g/ad;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/TakeOrderActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;",
            "Lcom/aadhk/restpos/bean/Category;",
            "Lcom/aadhk/restpos/g/ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/aadhk/restpos/a/h;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 47
    iput-object p2, p0, Lcom/aadhk/restpos/a/h;->i:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/aadhk/restpos/a/h;->m:Lcom/aadhk/restpos/bean/Category;

    .line 49
    iput-object p4, p0, Lcom/aadhk/restpos/a/h;->r:Lcom/aadhk/restpos/g/ad;

    .line 50
    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->j:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/aadhk/restpos/util/o;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->k:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/aadhk/restpos/util/o;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/h;->l:I

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->c:Landroid/content/res/Resources;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->p:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->c:Landroid/content/res/Resources;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->q:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/a/h;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->o:Lcom/aadhk/restpos/util/r;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method private a(Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 7
    .parameter

    .prologue
    .line 217
    new-instance v6, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    .line 218
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    .line 219
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->m:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    .line 223
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setModifierGroupId(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setKitchenNoteGroupId(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarn(Z)V

    .line 226
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarnQty(I)V

    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->r:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/a/h;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/a/h;->k:Ljava/lang/String;

    iget v5, p0, Lcom/aadhk/restpos/a/h;->l:I

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/g/ad;->a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v4

    .line 228
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    .line 229
    if-eqz v4, :cond_0

    .line 230
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v0

    .line 232
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDiscountAmt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    sub-double/2addr v2, v0

    .line 238
    :goto_0
    invoke-virtual {v6, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountAmt(D)V

    .line 240
    :cond_0
    invoke-virtual {v6, v2, v3}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 241
    return-object v6

    .line 235
    :cond_1
    iget v4, p0, Lcom/aadhk/restpos/a/h;->g:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v0

    .line 236
    sub-double/2addr v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/Item;ID)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/aadhk/restpos/bean/Item;->setOrderQty(I)V

    iget-object v0, p1, Lcom/aadhk/restpos/a/m;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, p4, p5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->getCost()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setItemCost(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->isStopSaleZeroQty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStopSaleZeroQty(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/bean/OrderItem;)V

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->r:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v2

    iget-object v3, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderItem;->getTax3Id()I

    move-result v4

    iget-object v5, p0, Lcom/aadhk/restpos/a/h;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v5

    iget-object v6, p0, Lcom/aadhk/restpos/a/h;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/a/h;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/a/h;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v10}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v10

    iget-object v12, p0, Lcom/aadhk/restpos/a/h;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v12}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v12

    invoke-virtual/range {v0 .. v12}, Lcom/aadhk/restpos/g/ad;->a(Ljava/lang/String;IIIZDDDI)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/bf;

    iget-object v2, p0, Lcom/aadhk/restpos/a/h;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/restpos/c/bf;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/a/l;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/restpos/a/l;-><init>(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bf;->show()V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->n:Lcom/aadhk/restpos/bean/OrderItem;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 77
    if-nez p2, :cond_2

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/a/h;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v2, Lcom/aadhk/restpos/a/m;

    invoke-direct {v2, p0, v7}, Lcom/aadhk/restpos/a/m;-><init>(Lcom/aadhk/restpos/a/h;B)V

    .line 80
    const v1, 0x7f090171

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->a:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0900f3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->b:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f09018a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->c:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f09018b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->d:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f09018c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->e:Landroid/widget/LinearLayout;

    .line 85
    const v1, 0x7f090189

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->f:Landroid/widget/LinearLayout;

    .line 86
    const v1, 0x7f090188

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/aadhk/restpos/a/m;->g:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 92
    :goto_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v2

    .line 95
    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/aadhk/restpos/a/h;->p:Ljava/lang/String;

    .line 99
    :cond_0
    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/aadhk/restpos/a/h;->q:Ljava/lang/String;

    .line 103
    :cond_1
    invoke-static {v3}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v3

    .line 104
    invoke-static {v2}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v2

    .line 106
    iget-object v4, v1, Lcom/aadhk/restpos/a/m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 107
    iget-object v3, v1, Lcom/aadhk/restpos/a/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v3, v1, Lcom/aadhk/restpos/a/m;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aadhk/restpos/a/h;->o:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v4}, Lcom/aadhk/restpos/util/r;->o()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    iget-object v3, v1, Lcom/aadhk/restpos/a/m;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v3, v1, Lcom/aadhk/restpos/a/m;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v3, v1, Lcom/aadhk/restpos/a/m;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, v1, Lcom/aadhk/restpos/a/m;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/i;

    invoke-direct {v3, p0, v0, v1}, Lcom/aadhk/restpos/a/i;-><init>(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;Lcom/aadhk/restpos/a/m;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, v1, Lcom/aadhk/restpos/a/m;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/k;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/a/k;-><init>(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, v1, Lcom/aadhk/restpos/a/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, v1, Lcom/aadhk/restpos/a/m;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/h;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/h;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, v1, Lcom/aadhk/restpos/a/m;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    iget-object v0, v1, Lcom/aadhk/restpos/a/m;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    :goto_2
    return-object p2

    .line 89
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/a/m;

    goto/16 :goto_0

    .line 148
    :cond_3
    iget-object v2, v1, Lcom/aadhk/restpos/a/m;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, v1, Lcom/aadhk/restpos/a/m;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
