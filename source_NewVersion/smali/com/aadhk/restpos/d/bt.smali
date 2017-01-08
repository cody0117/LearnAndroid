.class final Lcom/aadhk/restpos/d/bt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bt;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/aadhk/restpos/bean/SplitBill;

    .line 444
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v2}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/b/n;->b(JJ)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->a(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)Ljava/util/List;

    .line 446
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->a(Lcom/aadhk/restpos/d/bk;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)V

    .line 452
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->clone()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    .line 453
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 454
    iget-object v1, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->l(Lcom/aadhk/restpos/d/bk;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 455
    iget-object v1, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->n(Lcom/aadhk/restpos/d/bk;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 456
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setBillId(J)V

    .line 458
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 459
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 460
    const-string v3, "bundleOrderClone"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    const-string v0, "bundleOrder"

    iget-object v3, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const-class v2, Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 464
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/bk;->startActivity(Landroid/content/Intent;)V

    .line 465
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 466
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v8, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->l(Lcom/aadhk/restpos/d/bk;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v4}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v6}, Lcom/aadhk/restpos/d/bk;->m(Lcom/aadhk/restpos/d/bk;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/f/h;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/bk;->a(Lcom/aadhk/restpos/d/bk;D)D

    .line 449
    iget-object v8, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->n(Lcom/aadhk/restpos/d/bk;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v4}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/bt;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v6}, Lcom/aadhk/restpos/d/bk;->m(Lcom/aadhk/restpos/d/bk;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/f/h;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;D)D

    goto/16 :goto_0
.end method
