.class final Lcom/aadhk/restpos/d/cf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 12
    .parameter

    .prologue
    const-wide/high16 v10, 0x4059

    const-wide/16 v2, 0x0

    .line 815
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    check-cast p1, Lcom/aadhk/restpos/bean/Discount;

    invoke-static {v0, p1}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;Lcom/aadhk/restpos/bean/Discount;)Lcom/aadhk/restpos/bean/Discount;

    .line 818
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->u(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Discount;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 819
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->u(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Discount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->u(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Discount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v0

    .line 821
    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v5}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v5

    iget-object v7, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v7}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v7

    invoke-static {v5, v6, v0, v1, v7}, Lcom/aadhk/restpos/f/h;->a(DDI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    .line 831
    :goto_0
    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->n(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_0

    .line 832
    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    iget-object v5, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v5}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v5

    sub-double v7, v10, v0

    iget-object v9, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v9}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/aadhk/restpos/f/h;->a(DDI)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;D)D

    .line 836
    :cond_0
    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->p(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v3}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v3

    sub-double v0, v10, v0

    iget-object v5, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v5}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v5

    invoke-static {v3, v4, v0, v1, v5}, Lcom/aadhk/restpos/f/h;->a(DDI)D

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;D)D

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v10

    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->n(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v6}, Lcom/aadhk/restpos/d/cd;->p(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v6}, Lcom/aadhk/restpos/d/cd;->l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v8}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v8

    iget-object v9, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v9}, Lcom/aadhk/restpos/d/cd;->r(Lcom/aadhk/restpos/d/cd;)Z

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->a(DDDDIZ)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->t(Lcom/aadhk/restpos/d/cd;)V

    .line 845
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    .line 846
    return-void

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->u(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Discount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    .line 824
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    iget-object v4, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/aadhk/restpos/f/h;->b(DD)I

    move-result v0

    int-to-double v0, v0

    goto/16 :goto_0

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    move-wide v0, v2

    .line 828
    goto/16 :goto_0
.end method
