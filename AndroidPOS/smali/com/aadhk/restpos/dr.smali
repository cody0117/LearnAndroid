.class final Lcom/aadhk/restpos/dr;
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
    .line 509
    iput-object p1, p0, Lcom/aadhk/restpos/dr;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 512
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/eg;

    iget-object v2, p0, Lcom/aadhk/restpos/dr;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/eg;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/dr;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 513
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 514
    return-void
.end method
