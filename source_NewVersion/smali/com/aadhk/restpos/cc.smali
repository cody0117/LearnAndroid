.class final Lcom/aadhk/restpos/cc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/cb;

.field private c:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/cb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iput-object p2, p0, Lcom/aadhk/restpos/cc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v1, v1, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCancelPerson(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCancelReason(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v1, v1, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    .line 427
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->e(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v1, v1, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/w;->c(Lcom/aadhk/restpos/bean/Order;)V

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v0, v0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->g(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 432
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/cc;->c:I

    .line 439
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :goto_1
    return-void

    .line 434
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->h(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v1, v1, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v2, v2, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v3, v3, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->g(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/f;->a(Ljava/util/List;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Z)V

    .line 436
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/cc;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 446
    iget v0, p0, Lcom/aadhk/restpos/cc;->c:I

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v1, p0, Lcom/aadhk/restpos/cc;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->b:Lcom/aadhk/restpos/cb;

    iget-object v0, v0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    .line 450
    return-void
.end method
