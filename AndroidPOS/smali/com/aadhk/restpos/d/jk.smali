.class final Lcom/aadhk/restpos/d/jk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/jh;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/aadhk/restpos/d/jk;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 397
    new-instance v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/SplitBill;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/aadhk/restpos/d/jk;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/SplitBill;->setOrderId(J)V

    .line 399
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/SplitBill;->setAmount(D)V

    .line 400
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/jp;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jk;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {v2, v3, v0}, Lcom/aadhk/restpos/d/jp;-><init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/jk;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 401
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 402
    return-void
.end method
