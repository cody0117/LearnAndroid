.class final Lcom/aadhk/restpos/ay;
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
    .line 124
    iput-object p1, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 127
    check-cast p1, Lcom/aadhk/restpos/bean/Table;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getSequence()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/Table;->setSequence(I)V

    .line 131
    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ba;

    iget-object v2, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/ba;-><init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V

    iget-object v2, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 132
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method
