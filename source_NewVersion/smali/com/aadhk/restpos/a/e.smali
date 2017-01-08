.class public final Lcom/aadhk/restpos/a/e;
.super Lcom/aadhk/restpos/a/aa;
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

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/aadhk/restpos/b/q;

.field private l:Lcom/aadhk/restpos/b/j;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/aadhk/restpos/bean/Category;

.field private q:Lcom/aadhk/restpos/bean/OrderItem;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter
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
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/Category;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/aadhk/restpos/a/e;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 52
    iput-object p2, p0, Lcom/aadhk/restpos/a/e;->i:Ljava/util/List;

    .line 53
    iput-object p4, p0, Lcom/aadhk/restpos/a/e;->p:Lcom/aadhk/restpos/bean/Category;

    .line 54
    iput-object p3, p0, Lcom/aadhk/restpos/a/e;->j:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/aadhk/restpos/b/q;

    invoke-direct {v0, p5}, Lcom/aadhk/restpos/b/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->k:Lcom/aadhk/restpos/b/q;

    .line 56
    new-instance v0, Lcom/aadhk/restpos/b/j;

    invoke-direct {v0, p5}, Lcom/aadhk/restpos/b/j;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->l:Lcom/aadhk/restpos/b/j;

    .line 57
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->m:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->n:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/aadhk/restpos/f/i;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/e;->o:I

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->c:Landroid/content/res/Resources;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->r:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->c:Landroid/content/res/Resources;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->s:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 7
    .parameter

    .prologue
    .line 186
    new-instance v6, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    .line 189
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->p:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    .line 193
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setModifierGroupId(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 195
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarn(Z)V

    .line 196
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarnQty(I)V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->k:Lcom/aadhk/restpos/b/q;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/a/e;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/a/e;->n:Ljava/lang/String;

    iget v5, p0, Lcom/aadhk/restpos/a/e;->o:I

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/q;->a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v4

    .line 199
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    .line 200
    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setDisName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v0

    .line 203
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    sub-double/2addr v2, v0

    .line 209
    :goto_0
    invoke-virtual {v6, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setDisAmt(D)V

    .line 211
    :cond_0
    invoke-virtual {v6, v2, v3}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 213
    return-object v6

    .line 206
    :cond_1
    iget v4, p0, Lcom/aadhk/restpos/a/e;->g:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/aadhk/restpos/f/h;->a(DDI)D

    move-result-wide v0

    .line 207
    sub-double/2addr v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/e;->q:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->l:Lcom/aadhk/restpos/b/j;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/e;->q:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v2

    iget-object v3, p0, Lcom/aadhk/restpos/a/e;->q:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/a/e;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v4

    iget-object v5, p0, Lcom/aadhk/restpos/a/e;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v5

    iget-object v7, p0, Lcom/aadhk/restpos/a/e;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v7

    iget-object v9, p0, Lcom/aadhk/restpos/a/e;->f:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/aadhk/restpos/b/j;->a(Ljava/lang/String;IIZDDI)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/ap;

    iget-object v2, p0, Lcom/aadhk/restpos/a/e;->h:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/a/e;->q:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/restpos/c/ap;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/a/h;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/restpos/a/h;-><init>(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ap;->show()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->q:Lcom/aadhk/restpos/bean/OrderItem;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 78
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

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/a/e;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 85
    if-nez p2, :cond_2

    .line 86
    iget-object v1, p0, Lcom/aadhk/restpos/a/e;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030068

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v2, Lcom/aadhk/restpos/a/i;

    invoke-direct {v2, p0, v7}, Lcom/aadhk/restpos/a/i;-><init>(Lcom/aadhk/restpos/a/e;B)V

    .line 88
    const v1, 0x7f0b012c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/i;->a:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0b00d3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/i;->b:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0b0144

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/i;->c:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0b0145

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/aadhk/restpos/a/i;->d:Landroid/widget/LinearLayout;

    .line 92
    const v1, 0x7f0b0143

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/aadhk/restpos/a/i;->e:Landroid/widget/LinearLayout;

    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 98
    :goto_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v2

    .line 101
    if-nez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/aadhk/restpos/a/e;->r:Ljava/lang/String;

    .line 105
    :cond_0
    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/aadhk/restpos/a/e;->s:Ljava/lang/String;

    .line 109
    :cond_1
    invoke-static {v3}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v3

    .line 110
    invoke-static {v2}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v2

    .line 112
    iget-object v4, v1, Lcom/aadhk/restpos/a/i;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 113
    iget-object v3, v1, Lcom/aadhk/restpos/a/i;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v3, v1, Lcom/aadhk/restpos/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v3, v1, Lcom/aadhk/restpos/a/i;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v2, v1, Lcom/aadhk/restpos/a/i;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/f;

    invoke-direct {v3, p0, v0, v1}, Lcom/aadhk/restpos/a/f;-><init>(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;Lcom/aadhk/restpos/a/i;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, v1, Lcom/aadhk/restpos/a/i;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/g;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/a/g;-><init>(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v2, v1, Lcom/aadhk/restpos/a/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, v1, Lcom/aadhk/restpos/a/i;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/e;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/e;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getNum()I

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    iget-object v2, v1, Lcom/aadhk/restpos/a/i;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    iget-object v0, v1, Lcom/aadhk/restpos/a/i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :goto_2
    return-object p2

    .line 95
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/a/i;

    goto/16 :goto_0

    .line 155
    :cond_3
    iget-object v2, v1, Lcom/aadhk/restpos/a/i;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 161
    :cond_4
    iget-object v0, v1, Lcom/aadhk/restpos/a/i;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
