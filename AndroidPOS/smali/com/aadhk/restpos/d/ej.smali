.class final Lcom/aadhk/restpos/d/ej;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/d/ei;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ei;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ej;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    .line 711
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/aadhk/restpos/bean/SplitBill;

    .line 712
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->d(Lcom/aadhk/restpos/d/du;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 715
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getBillId()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 716
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;Ljava/util/List;)V

    .line 726
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 727
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->m(Lcom/aadhk/restpos/d/du;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 728
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->o(Lcom/aadhk/restpos/d/du;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 729
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->p(Lcom/aadhk/restpos/d/du;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    .line 730
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setBillId(J)V

    .line 731
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    .line 732
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 733
    return-void

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 721
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v8, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->m(Lcom/aadhk/restpos/d/du;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v4, v4, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v4}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v6, v6, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v6}, Lcom/aadhk/restpos/d/du;->n(Lcom/aadhk/restpos/d/du;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/util/m;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;D)D

    .line 722
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v8, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->o(Lcom/aadhk/restpos/d/du;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v4, v4, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v4}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v6, v6, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v6}, Lcom/aadhk/restpos/d/du;->n(Lcom/aadhk/restpos/d/du;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/util/m;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;D)D

    .line 723
    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v8, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->p(Lcom/aadhk/restpos/d/du;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v4, v4, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v4}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/ej;->b:Lcom/aadhk/restpos/d/ei;

    iget-object v6, v6, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v6}, Lcom/aadhk/restpos/d/du;->n(Lcom/aadhk/restpos/d/du;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/util/m;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/du;->c(Lcom/aadhk/restpos/d/du;D)D

    goto/16 :goto_1
.end method
