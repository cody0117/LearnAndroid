.class final Lcom/aadhk/restpos/bj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/TableGroup;

.field final synthetic b:Lcom/aadhk/restpos/MgrTableGroupActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/aadhk/restpos/bj;->b:Lcom/aadhk/restpos/MgrTableGroupActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bean/TableGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bean/TableGroup;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/TableGroup;->setName(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/br;

    iget-object v2, p0, Lcom/aadhk/restpos/bj;->b:Lcom/aadhk/restpos/MgrTableGroupActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bean/TableGroup;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/br;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V

    iget-object v2, p0, Lcom/aadhk/restpos/bj;->b:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 74
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method
