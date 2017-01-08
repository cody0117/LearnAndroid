.class final Lcom/aadhk/restpos/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableGroupActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/TableGroup;-><init>()V

    .line 108
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/TableGroup;->setName(Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/bn;

    iget-object v3, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {v2, v3, v0}, Lcom/aadhk/restpos/bn;-><init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V

    iget-object v0, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 110
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method
