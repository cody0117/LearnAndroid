.class final Lcom/aadhk/restpos/d/fj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ey;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 570
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 571
    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 573
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 574
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    .line 599
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->f(Lcom/aadhk/restpos/d/ey;)V

    .line 601
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->e()V

    .line 602
    return-void

    .line 575
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->g(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 577
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 578
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    goto :goto_0

    .line 579
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 580
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 581
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    .line 582
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->h(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    goto :goto_0

    .line 583
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 584
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 585
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 586
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->i(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    goto :goto_0

    .line 587
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->g(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 589
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->h(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 590
    iget-object v0, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fj;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->i(Lcom/aadhk/restpos/d/ey;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    goto/16 :goto_0
.end method
