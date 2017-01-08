.class final Lcom/aadhk/restpos/d/dy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/d/dv;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dv;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/aadhk/restpos/d/dy;->b:Lcom/aadhk/restpos/d/dv;

    iput-object p2, p0, Lcom/aadhk/restpos/d/dy;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 271
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ec;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dy;->b:Lcom/aadhk/restpos/d/dv;

    iget-object v2, v2, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dy;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/d/ec;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dy;->b:Lcom/aadhk/restpos/d/dv;

    iget-object v2, v2, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v2}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 272
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 273
    return-void
.end method
