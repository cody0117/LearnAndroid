.class final Lcom/aadhk/restpos/d/dz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/aa;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/d/du;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/aadhk/restpos/d/dz;->b:Lcom/aadhk/restpos/d/du;

    iput-object p2, p0, Lcom/aadhk/restpos/d/dz;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 4
    .parameter

    .prologue
    .line 415
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/el;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dz;->b:Lcom/aadhk/restpos/d/du;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dz;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/aadhk/restpos/d/el;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;D)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dz;->b:Lcom/aadhk/restpos/d/du;

    invoke-static {v2}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 416
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void
.end method
