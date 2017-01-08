.class final Lcom/aadhk/restpos/db;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ServiceFeeActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ServiceFeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/aadhk/restpos/db;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    check-cast p1, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 70
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/dk;

    iget-object v2, p0, Lcom/aadhk/restpos/db;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/dk;-><init>(Lcom/aadhk/restpos/ServiceFeeActivity;Lcom/aadhk/restpos/bean/ServiceFee;)V

    iget-object v2, p0, Lcom/aadhk/restpos/db;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 71
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method
