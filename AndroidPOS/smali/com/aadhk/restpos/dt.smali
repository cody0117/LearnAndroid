.class final Lcom/aadhk/restpos/dt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TakeOrderActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/aadhk/restpos/dt;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/aadhk/restpos/dt;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 590
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ec;

    iget-object v2, p0, Lcom/aadhk/restpos/dt;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/dt;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/dt;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v5}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/ec;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;JI)V

    iget-object v2, p0, Lcom/aadhk/restpos/dt;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 591
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 592
    return-void
.end method
