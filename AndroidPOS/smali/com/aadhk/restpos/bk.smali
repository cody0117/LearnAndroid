.class final Lcom/aadhk/restpos/bk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/TableGroup;

.field final synthetic b:Lcom/aadhk/restpos/MgrTableGroupActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/aadhk/restpos/bk;->b:Lcom/aadhk/restpos/MgrTableGroupActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/bk;->a:Lcom/aadhk/restpos/bean/TableGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/bp;

    iget-object v2, p0, Lcom/aadhk/restpos/bk;->b:Lcom/aadhk/restpos/MgrTableGroupActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/bk;->a:Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/TableGroup;->getTableGroupId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/bp;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/bk;->b:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 82
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method
