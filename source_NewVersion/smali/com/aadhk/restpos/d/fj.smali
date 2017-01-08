.class final Lcom/aadhk/restpos/d/fj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ff;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ff;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/aadhk/restpos/bean/SplitBill;

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->d(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/b/n;->b(JJ)Ljava/util/List;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;Ljava/util/List;)V

    .line 298
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->clone()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    .line 299
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 300
    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ff;->e(Lcom/aadhk/restpos/d/ff;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 301
    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ff;->g(Lcom/aadhk/restpos/d/ff;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 302
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setBillId(J)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 305
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 306
    const-string v3, "bundleOrderClone"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    const-string v0, "bundleOrder"

    iget-object v3, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v3}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->h(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const-class v2, Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/ff;->startActivity(Landroid/content/Intent;)V

    .line 312
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->h(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->finish()V

    .line 313
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->d(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/b/n;->b(JJ)Ljava/util/List;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;Ljava/util/List;)V

    .line 294
    iget-object v8, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->e(Lcom/aadhk/restpos/d/ff;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v4}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v6}, Lcom/aadhk/restpos/d/ff;->f(Lcom/aadhk/restpos/d/ff;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/f/h;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;D)D

    .line 295
    iget-object v8, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->g(Lcom/aadhk/restpos/d/ff;)D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v4}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v6}, Lcom/aadhk/restpos/d/ff;->f(Lcom/aadhk/restpos/d/ff;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/aadhk/restpos/f/h;->a(DDDI)D

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;D)D

    goto/16 :goto_0
.end method
