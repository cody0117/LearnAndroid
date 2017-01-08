.class final Lcom/aadhk/restpos/d/cn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/d/cf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cf;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/aadhk/restpos/d/cn;->b:Lcom/aadhk/restpos/d/cf;

    iput-object p2, p0, Lcom/aadhk/restpos/d/cn;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 377
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 379
    if-lez v0, :cond_0

    .line 380
    add-int/lit8 v0, v0, -0x1

    .line 381
    iget-object v1, p0, Lcom/aadhk/restpos/d/cn;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    :cond_0
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/cy;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cn;->b:Lcom/aadhk/restpos/d/cf;

    invoke-direct {v2, v3, v0}, Lcom/aadhk/restpos/d/cy;-><init>(Lcom/aadhk/restpos/d/cf;I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cn;->b:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 385
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method
