.class final Lcom/aadhk/restpos/d/em;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/du;

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/aadhk/restpos/bean/OrderItem;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    .line 552
    iput-object p4, p0, Lcom/aadhk/restpos/d/em;->f:Ljava/lang/String;

    .line 553
    iput-object p3, p0, Lcom/aadhk/restpos/d/em;->e:Ljava/lang/String;

    .line 554
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setCancelReason(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setEndTime(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 562
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderQty(I)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ad;->b(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/em;->c:Ljava/util/Map;

    .line 567
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->c(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->j(Lcom/aadhk/restpos/d/du;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->d:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 572
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/em;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/em;->b:I

    .line 575
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 582
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->c:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    iget v0, p0, Lcom/aadhk/restpos/d/em;->b:I

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/em;->b:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/eh;

    iget-object v2, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/eh;-><init>(Lcom/aadhk/restpos/d/du;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v2}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 589
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 605
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->k(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/n;->notifyDataSetChanged()V

    .line 592
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->h(Lcom/aadhk/restpos/d/du;)V

    goto :goto_0

    .line 597
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 599
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 600
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 603
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
