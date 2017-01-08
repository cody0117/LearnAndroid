.class final Lcom/aadhk/restpos/d/bs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/d/br;

.field private c:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/br;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bs;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setCancelReason(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setEndTime(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v1, v1, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/n;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 335
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->k(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->f(Lcom/aadhk/restpos/d/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v1, v1, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v1, v1, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 340
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/bs;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/bs;->c:I

    .line 343
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 350
    iget v0, p0, Lcom/aadhk/restpos/d/bs;->c:I

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/bs;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->g(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/j;->notifyDataSetChanged()V

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->h(Lcom/aadhk/restpos/d/bk;)V

    .line 355
    iget-object v0, p0, Lcom/aadhk/restpos/d/bs;->b:Lcom/aadhk/restpos/d/br;

    iget-object v0, v0, Lcom/aadhk/restpos/d/br;->b:Lcom/aadhk/restpos/c/bz;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bz;->dismiss()V

    .line 356
    return-void
.end method
