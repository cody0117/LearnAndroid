.class final Lcom/aadhk/restpos/d/ki;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/kh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/kh;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/aadhk/restpos/d/ki;->a:Lcom/aadhk/restpos/d/kh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v1, Lcom/aadhk/restpos/d/kg;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ki;->a:Lcom/aadhk/restpos/d/kh;

    iget-object v2, v2, Lcom/aadhk/restpos/d/kh;->b:Lcom/aadhk/restpos/d/ke;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/kg;-><init>(Lcom/aadhk/restpos/d/ke;B)V

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    .line 93
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method
