.class final Lcom/aadhk/restpos/d/ci;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->A(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/w;->b(Lcom/aadhk/restpos/bean/Order;)V

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->A(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/w;->a(Lcom/aadhk/restpos/bean/Order;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->B(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderPayment;->getAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v3}, Lcom/aadhk/restpos/d/cd;->C(Lcom/aadhk/restpos/d/cd;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    iget-object v1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->B(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->C(Lcom/aadhk/restpos/d/cd;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    iget-object v2, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v3}, Lcom/aadhk/restpos/d/cd;->B(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v5}, Lcom/aadhk/restpos/d/cd;->C(Lcom/aadhk/restpos/d/cd;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    iget-object v3, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v3}, Lcom/aadhk/restpos/d/cd;->B(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/OrderPayment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 1012
    new-instance v3, Lcom/aadhk/restpos/c/bd;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/aadhk/restpos/c/bd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/aadhk/restpos/d/cj;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/cj;-><init>(Lcom/aadhk/restpos/d/ci;)V

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/c/bd;->a(Lcom/aadhk/product/library/b/f;)V

    .line 1025
    invoke-virtual {v3}, Lcom/aadhk/restpos/c/bd;->show()V

    .line 1035
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasUnpaidBill()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    goto :goto_0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->d()V

    goto :goto_0

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method
