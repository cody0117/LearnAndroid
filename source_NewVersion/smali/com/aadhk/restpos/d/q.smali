.class public final Lcom/aadhk/restpos/d/q;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Lcom/aadhk/restpos/TakeOrderActivity;

.field private static n:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/aadhk/restpos/d/u;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/GridView;

.field private l:Landroid/view/View;

.field private m:Z

.field private o:Lcom/aadhk/restpos/b/i;

.field private p:Lcom/aadhk/restpos/b/b;

.field private q:Lcom/aadhk/restpos/b/q;

.field private r:Lcom/aadhk/restpos/bean/Company;

.field private s:I

.field private t:Landroid/widget/PopupWindow;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/aadhk/restpos/d/q;->s:I

    .line 351
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/q;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/aadhk/restpos/d/q;->y:I

    return p1
.end method

.method static synthetic a()Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/q;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    move-object v6, v0

    .line 273
    :goto_0
    new-instance v7, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getCategoryId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iput v1, p0, Lcom/aadhk/restpos/d/q;->y:I

    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setModifierGroupId(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarn(Z)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarnQty(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->q:Lcom/aadhk/restpos/b/q;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/q;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/q;->v:Ljava/lang/String;

    iget v5, p0, Lcom/aadhk/restpos/d/q;->x:I

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/q;->a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v4

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setDisName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v0

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt()Z

    move-result v4

    if-eqz v4, :cond_4

    sub-double/2addr v2, v0

    :goto_3
    invoke-virtual {v7, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setDisAmt(D)V

    :cond_0
    invoke-virtual {v7, v2, v3}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 274
    sget-object v0, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    sget-object v1, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 276
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()V

    .line 277
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()V

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 279
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    move-object v6, v0

    goto/16 :goto_0

    .line 273
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    iget v4, p0, Lcom/aadhk/restpos/d/q;->w:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/aadhk/restpos/f/h;->a(DDI)D

    move-result-wide v0

    sub-double/2addr v2, v0

    goto :goto_3
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/q;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/q;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/q;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/q;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/aadhk/restpos/d/q;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/q;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/d/u;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Lcom/aadhk/restpos/d/u;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/q;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/widget/GridView;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Ljava/util/List;

    .line 151
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 152
    sget-object v2, Lcom/aadhk/restpos/d/q;->c:Ljava/util/Map;

    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 154
    iget-object v3, p0, Lcom/aadhk/restpos/d/q;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/q;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/aadhk/restpos/d/q;->y:I

    return v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->p:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    .line 115
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->q()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/d/q;->c:Ljava/util/Map;

    .line 119
    sget-object v0, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/Category;

    .line 120
    sget-object v11, Lcom/aadhk/restpos/d/q;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->o:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/q;->r:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/q;->r:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/q;->r:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/q;->r:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/b/i;->a(JZDDI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/aadhk/restpos/d/q;->f()V

    .line 123
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/d/q;->m:Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/view/View;

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/q;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :goto_2
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->e()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/q;->y:I

    iget v0, p0, Lcom/aadhk/restpos/d/q;->y:I

    sget-object v1, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    iput v9, p0, Lcom/aadhk/restpos/d/q;->y:I

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/view/View;

    const v1, 0x7f0b013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/GridView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/view/View;

    const v1, 0x7f0b013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/widget/GridView;

    new-instance v0, Lcom/aadhk/restpos/d/u;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/u;-><init>(Lcom/aadhk/restpos/d/q;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Lcom/aadhk/restpos/d/u;

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Lcom/aadhk/restpos/d/u;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/aadhk/restpos/d/q;->y:I

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v7, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/widget/GridView;

    new-instance v0, Lcom/aadhk/restpos/a/e;

    sget-object v1, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    sget-object v3, Lcom/aadhk/restpos/d/q;->c:Ljava/util/Map;

    sget-object v2, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    iget v4, p0, Lcom/aadhk/restpos/d/q;->y:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    sget-object v4, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    iget v5, p0, Lcom/aadhk/restpos/d/q;->y:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aadhk/restpos/bean/Category;

    sget-object v5, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/a/e;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/aadhk/restpos/d/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/r;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/d/s;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/s;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    return-void

    :cond_2
    move v0, v9

    .line 123
    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 130
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    sput-object p1, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 131
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 335
    sget-object v0, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 336
    new-instance v0, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 337
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/q;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 338
    const v2, 0x7f0b005b

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 339
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 340
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f0901f5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->setHasOptionsMenu(Z)V

    .line 88
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    new-instance v0, Lcom/aadhk/restpos/b/b;

    sget-object v1, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->p:Lcom/aadhk/restpos/b/b;

    .line 90
    new-instance v0, Lcom/aadhk/restpos/b/i;

    sget-object v1, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->o:Lcom/aadhk/restpos/b/i;

    .line 91
    new-instance v0, Lcom/aadhk/restpos/b/q;

    sget-object v1, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->q:Lcom/aadhk/restpos/b/q;

    .line 92
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->r:Lcom/aadhk/restpos/bean/Company;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->r:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/q;->w:I

    .line 95
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->u:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->v:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/aadhk/restpos/f/i;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/q;->x:I

    .line 98
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 140
    const v0, 0x7f0b02a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 141
    iget v0, p0, Lcom/aadhk/restpos/d/q;->s:I

    sget-object v1, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 142
    const v1, 0x7f0200ad

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 143
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 145
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 103
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    :cond_0
    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 259
    invoke-direct {p0, p3}, Lcom/aadhk/restpos/d/q;->a(I)V

    .line 260
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget v1, p0, Lcom/aadhk/restpos/d/q;->y:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(I)V

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Lcom/aadhk/restpos/d/u;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/u;->notifyDataSetChanged()V

    .line 262
    iget-object v6, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/widget/GridView;

    new-instance v0, Lcom/aadhk/restpos/a/e;

    sget-object v1, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    sget-object v3, Lcom/aadhk/restpos/d/q;->c:Ljava/util/Map;

    sget-object v2, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    iget v4, p0, Lcom/aadhk/restpos/d/q;->y:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/aadhk/restpos/d/q;->b:Ljava/util/List;

    sget-object v4, Lcom/aadhk/restpos/d/q;->a:Ljava/util/List;

    iget v5, p0, Lcom/aadhk/restpos/d/q;->y:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aadhk/restpos/bean/Category;

    sget-object v5, Lcom/aadhk/restpos/d/q;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/a/e;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/aadhk/restpos/d/q;->s:I

    if-ne v0, v1, :cond_0

    .line 227
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v1, p0, Lcom/aadhk/restpos/d/q;->s:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 228
    sget-object v0, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0b00c6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/widget/EditText;

    const v0, 0x7f0b00c7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/widget/ListView;

    new-instance v3, Lcom/aadhk/restpos/a/bd;

    sget-object v4, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v5, p0, Lcom/aadhk/restpos/d/q;->d:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/aadhk/restpos/a/bd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/widget/EditText;

    new-instance v3, Lcom/aadhk/restpos/d/t;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/aadhk/restpos/d/t;-><init>(Lcom/aadhk/restpos/d/q;B)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    sget-object v3, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    sget-object v2, Lcom/aadhk/restpos/d/q;->f:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 230
    :cond_0
    return v6
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 136
    return-void
.end method
