.class final Lcom/aadhk/restpos/dl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bm;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TableListActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TableListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/aadhk/restpos/dl;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 290
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/dl;->a:Lcom/aadhk/restpos/TableListActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/TableListActivity;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/dl;->a:Lcom/aadhk/restpos/TableListActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 291
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    return-void
.end method
