.class final Lcom/aadhk/restpos/bs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/cv;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/OrderListActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/OrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/Item;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bt;

    iget-object v2, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/bt;-><init>(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/bean/Item;)V

    iget-object v2, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/OrderListActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 92
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method
