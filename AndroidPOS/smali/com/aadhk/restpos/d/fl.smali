.class final Lcom/aadhk/restpos/d/fl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/cc;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ey;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DD)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x4059

    .line 627
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    .line 628
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->j(Lcom/aadhk/restpos/d/ey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->g(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    sub-double v3, v6, p3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v5}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->j(Lcom/aadhk/restpos/d/ey;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->h(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    sub-double v3, v6, p3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v5}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->j(Lcom/aadhk/restpos/d/ey;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->i(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    sub-double v3, v6, p3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v5}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    sub-double v3, v6, p3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v5}, Lcom/aadhk/restpos/d/ey;->k(Lcom/aadhk/restpos/d/ey;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 641
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->f(Lcom/aadhk/restpos/d/ey;)V

    .line 643
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->e()V

    .line 644
    return-void
.end method
