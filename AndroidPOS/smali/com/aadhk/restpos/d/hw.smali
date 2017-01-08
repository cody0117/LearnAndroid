.class final Lcom/aadhk/restpos/d/hw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/hu;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/aadhk/restpos/d/hw;->a:Lcom/aadhk/restpos/d/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/hy;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hw;->a:Lcom/aadhk/restpos/d/hu;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/hy;-><init>(Lcom/aadhk/restpos/d/hu;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/hw;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 350
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    return-void
.end method
