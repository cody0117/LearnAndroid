.class final Lcom/aadhk/restpos/av;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/aadhk/restpos/av;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    check-cast p1, Lcom/aadhk/restpos/bean/Table;

    .line 93
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bh;

    iget-object v2, p0, Lcom/aadhk/restpos/av;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/bh;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V

    iget-object v2, p0, Lcom/aadhk/restpos/av;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 94
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method
