.class final Lcom/aadhk/restpos/cz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/do;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ServerActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ServerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/aadhk/restpos/cz;->a:Lcom/aadhk/restpos/ServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/cz;->a:Lcom/aadhk/restpos/ServerActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/ServerActivity;->c:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/cz;->a:Lcom/aadhk/restpos/ServerActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 74
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method
