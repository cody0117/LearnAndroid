.class final Lcom/aadhk/restpos/d/fo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bv;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fn;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasUnpaidBill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 833
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->finish()V

    .line 839
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->f()V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setOpenDrawer(Z)V

    .line 824
    new-instance v0, Lcom/aadhk/product/library/a/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/fn;->a:Lcom/aadhk/restpos/d/ey;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ey;->b:Lcom/aadhk/product/library/a/c;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    .line 825
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 826
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fo;->a()V

    .line 827
    return-void
.end method
