.class final Lcom/aadhk/restpos/d/eg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ef;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ef;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/aadhk/restpos/d/eg;->a:Lcom/aadhk/restpos/d/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    .line 452
    check-cast p1, Lcom/aadhk/restpos/bean/Order;

    .line 453
    new-instance v8, Lcom/aadhk/product/library/a/d;

    new-instance v0, Lcom/aadhk/restpos/d/ek;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eg;->a:Lcom/aadhk/restpos/d/ef;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/eg;->a:Lcom/aadhk/restpos/d/ef;

    invoke-static {v4}, Lcom/aadhk/restpos/d/ef;->a(Lcom/aadhk/restpos/d/ef;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/eg;->a:Lcom/aadhk/restpos/d/ef;

    invoke-static {v6}, Lcom/aadhk/restpos/d/ef;->b(Lcom/aadhk/restpos/d/ef;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/aadhk/restpos/d/ek;-><init>(Lcom/aadhk/restpos/d/du;JJJ)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/eg;->a:Lcom/aadhk/restpos/d/ef;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 454
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 455
    return-void
.end method
