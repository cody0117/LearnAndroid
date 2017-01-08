.class final Lcom/aadhk/restpos/d/iy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/cr;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/it;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/it;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/aadhk/restpos/d/iy;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/License;)V
    .locals 4
    .parameter

    .prologue
    .line 511
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jc;

    iget-object v2, p0, Lcom/aadhk/restpos/d/iy;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/d/jc;-><init>(Lcom/aadhk/restpos/d/it;Lcom/aadhk/restpos/bean/License;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/iy;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v2}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 512
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 513
    return-void
.end method
