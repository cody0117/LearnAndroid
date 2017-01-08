.class final Lcom/aadhk/restpos/ax;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/aadhk/restpos/ax;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bg;

    iget-object v2, p0, Lcom/aadhk/restpos/ax;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/bg;-><init>(Lcom/aadhk/restpos/MgrTableActivity;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/ax;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 115
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method
