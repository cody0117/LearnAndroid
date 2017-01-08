.class final Lcom/aadhk/restpos/d/jl;
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
    .line 427
    iput-object p1, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 431
    iget-object v0, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aadhk/restpos/bean/SplitBill;

    .line 432
    iget-object v0, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 433
    new-instance v7, Lcom/aadhk/product/library/a/d;

    new-instance v0, Lcom/aadhk/restpos/d/jv;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v3}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/d/jv;-><init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;JJ)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v1

    invoke-direct {v7, v0, v1, v8}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 434
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v7, v0, v9}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 436
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ju;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    iget-object v4, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v4}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/aadhk/restpos/d/ju;-><init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;J)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/jl;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 437
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v9}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
