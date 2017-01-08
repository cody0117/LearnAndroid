.class public Lcom/aadhk/restpos/PaymentActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Lcom/aadhk/restpos/g/s;

.field private H:Lcom/aadhk/restpos/g/z;

.field private I:Lcom/aadhk/restpos/bean/RolePermission;

.field private J:Lcom/aadhk/restpos/bean/RolePermission;

.field private K:Lcom/aadhk/restpos/bean/RolePermission;

.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Lcom/aadhk/restpos/d/fp;

.field private q:Lcom/aadhk/restpos/d/ey;

.field private r:Lcom/aadhk/restpos/bean/Order;

.field private s:Lcom/aadhk/restpos/bean/Order;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:I

.field private x:Lcom/aadhk/restpos/bean/Customer;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PaymentActivity;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/FragmentManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Landroid/support/v4/app/FragmentManager;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/PaymentActivity;Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/d/ey;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/PaymentActivity;Lcom/aadhk/restpos/d/fp;)Lcom/aadhk/restpos/d/fp;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/PaymentActivity;->p:Lcom/aadhk/restpos/d/fp;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/PaymentActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/PaymentActivity;->t:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/g/s;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->G:Lcom/aadhk/restpos/g/s;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/PaymentActivity;)Ljava/util/List;
    .locals 8
    .parameter

    .prologue
    .line 44
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderItem;

    if-nez v1, :cond_1

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    move-object v3, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/aadhk/restpos/PaymentActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/PaymentActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/d/ey;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/PaymentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    return v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/d/fp;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->p:Lcom/aadhk/restpos/d/fp;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x4

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->s:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->clone()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax2Name(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax3Name(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->u:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->u:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/aadhk/restpos/bean/ServiceFee;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/ServiceFee;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->u:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 127
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v3

    iget v4, p0, Lcom/aadhk/restpos/PaymentActivity;->w:I

    if-ne v3, v4, :cond_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aadhk/restpos/PaymentActivity;->v:Z

    .line 135
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/PaymentActivity;->w:I

    .line 144
    :goto_1
    iget-boolean v1, p0, Lcom/aadhk/restpos/PaymentActivity;->v:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    iget-object v2, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v3

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v5

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v7

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v9

    add-double/2addr v7, v9

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v0

    iget v9, p0, Lcom/aadhk/restpos/PaymentActivity;->j:I

    iget-object v10, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v10}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v10

    iget-object v11, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v11}, Lcom/aadhk/restpos/bean/Company;->isServiceAfterTax()Z

    move-result v11

    if-nez v10, :cond_2

    if-nez v11, :cond_5

    :cond_2
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v7, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v13}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1, v9, v12}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 153
    :goto_3
    return-void

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aadhk/restpos/PaymentActivity;->v:Z

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/PaymentActivity;->w:I

    goto/16 :goto_1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aadhk/restpos/PaymentActivity;->v:Z

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/PaymentActivity;->w:I

    goto/16 :goto_1

    .line 146
    :cond_5
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v10, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v13}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1, v9, v12}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_2

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    goto :goto_3

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Customer;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/aadhk/restpos/PaymentActivity;->x:Lcom/aadhk/restpos/bean/Customer;

    .line 436
    return-void
.end method

.method public final b()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->C:Landroid/widget/Button;

    return-object v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/CustomerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 338
    const-string v2, "actionType"

    const-string v3, "contextPay"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 340
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 361
    instance-of v1, v0, Lcom/aadhk/restpos/d/fp;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Lcom/aadhk/restpos/d/fp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fp;->b()V

    .line 365
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 373
    instance-of v1, v0, Lcom/aadhk/restpos/d/fp;

    if-eqz v1, :cond_0

    .line 374
    check-cast v0, Lcom/aadhk/restpos/d/fp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fp;->a()V

    .line 377
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 385
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 386
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 388
    const v1, 0x7f080367

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 391
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->finish()V

    .line 392
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method public final h()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public final i()Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->I:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method public final j()Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->J:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method public final k()Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->K:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method public final m()Lcom/aadhk/restpos/bean/Customer;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->x:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 317
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    const-string v1, "bundleCustomer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->x:Lcom/aadhk/restpos/bean/Customer;

    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 330
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->s:Lcom/aadhk/restpos/bean/Order;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 397
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->finish()V

    .line 398
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->y:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->c()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->z:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->d()V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->A:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->e()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->B:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->f()V

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->C:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    goto :goto_0

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->D:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->b()V

    goto :goto_0

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->E:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->a()V

    goto :goto_0

    .line 279
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->F:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->F:Landroid/widget/Button;

    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f000f

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 67
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    .line 70
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->y:Landroid/widget/Button;

    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->z:Landroid/widget/Button;

    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->A:Landroid/widget/Button;

    const v0, 0x7f09019d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->B:Landroid/widget/Button;

    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->C:Landroid/widget/Button;

    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->D:Landroid/widget/Button;

    const v0, 0x7f0901a0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->E:Landroid/widget/Button;

    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->F:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 72
    const-string v0, "bundleOrder"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->s:Lcom/aadhk/restpos/bean/Order;

    .line 73
    const-string v0, "bundleCustomer"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->x:Lcom/aadhk/restpos/bean/Customer;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->f:Ljava/util/Map;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->I:Lcom/aadhk/restpos/bean/RolePermission;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->f:Ljava/util/Map;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->J:Lcom/aadhk/restpos/bean/RolePermission;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->f:Ljava/util/Map;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->K:Lcom/aadhk/restpos/bean/RolePermission;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->s:Lcom/aadhk/restpos/bean/Order;

    if-nez v0, :cond_1

    .line 79
    invoke-static {p0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    .line 82
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/g/s;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->G:Lcom/aadhk/restpos/g/s;

    .line 83
    new-instance v0, Lcom/aadhk/restpos/g/z;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->H:Lcom/aadhk/restpos/g/z;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->I:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->J:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->K:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->a()V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :cond_5
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/ch;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/ch;-><init>(Lcom/aadhk/restpos/PaymentActivity;B)V

    invoke-direct {v0, v2, p0, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 109
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void

    :cond_6
    move v0, v1

    .line 69
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->G:Lcom/aadhk/restpos/g/s;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 457
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->H:Lcom/aadhk/restpos/g/z;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 458
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 459
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09019c

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->d()V

    .line 306
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090309

    if-ne v0, v1, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    goto :goto_0

    .line 301
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09019f

    if-ne v0, v1, :cond_3

    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->b()V

    goto :goto_0

    .line 303
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901a0

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ey;->a()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 402
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 403
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "prefSessionStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;J)V

    .line 404
    return-void
.end method

.method public final x()Lcom/aadhk/restpos/g/s;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->G:Lcom/aadhk/restpos/g/s;

    return-object v0
.end method

.method public final y()Lcom/aadhk/restpos/util/r;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method
