.class final Lcom/aadhk/restpos/d/bu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->o(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/w;->b(Lcom/aadhk/restpos/bean/Order;)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->o(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/w;->a(Lcom/aadhk/restpos/bean/Order;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasUnpaidBill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a()V

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 538
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->e()V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bu;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method
