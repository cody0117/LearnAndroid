.class final Lcom/aadhk/restpos/dw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/dv;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TakeOrderActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 692
    iget-object v0, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCancelPerson(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Order;->setCancelReason(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    .line 699
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/eh;

    iget-object v2, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/eh;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/dw;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 700
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 701
    return-void
.end method
