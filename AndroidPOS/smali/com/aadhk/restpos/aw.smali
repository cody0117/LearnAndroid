.class final Lcom/aadhk/restpos/aw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Table;

.field final synthetic b:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/aw;->b:Lcom/aadhk/restpos/MgrTableActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/aw;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bf;

    iget-object v2, p0, Lcom/aadhk/restpos/aw;->b:Lcom/aadhk/restpos/MgrTableActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/aw;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/bf;-><init>(Lcom/aadhk/restpos/MgrTableActivity;J)V

    iget-object v2, p0, Lcom/aadhk/restpos/aw;->b:Lcom/aadhk/restpos/MgrTableActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 102
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method
