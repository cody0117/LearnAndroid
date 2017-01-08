.class final Lcom/aadhk/restpos/d/jj;
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
    .line 373
    iput-object p1, p0, Lcom/aadhk/restpos/d/jj;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 376
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/aadhk/restpos/d/jj;->a:Lcom/aadhk/restpos/d/jh;

    iget-object v2, p0, Lcom/aadhk/restpos/d/jj;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v2, v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;Ljava/util/List;)Ljava/util/List;

    .line 378
    iget-object v0, p0, Lcom/aadhk/restpos/d/jj;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 379
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jq;

    iget-object v2, p0, Lcom/aadhk/restpos/d/jj;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/jq;-><init>(Lcom/aadhk/restpos/d/jh;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/jj;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 380
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 381
    return-void
.end method
