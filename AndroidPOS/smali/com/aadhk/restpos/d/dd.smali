.class final Lcom/aadhk/restpos/d/dd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Modifier;

.field final synthetic b:Lcom/aadhk/restpos/d/db;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/bean/Modifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/aadhk/restpos/d/dd;->b:Lcom/aadhk/restpos/d/db;

    iput-object p2, p0, Lcom/aadhk/restpos/d/dd;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/dj;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dd;->b:Lcom/aadhk/restpos/d/db;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dd;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/dj;-><init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/bean/Modifier;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dd;->b:Lcom/aadhk/restpos/d/db;

    invoke-static {v2}, Lcom/aadhk/restpos/d/db;->b(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 169
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    return-void
.end method
