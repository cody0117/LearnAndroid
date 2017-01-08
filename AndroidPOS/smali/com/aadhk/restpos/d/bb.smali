.class final Lcom/aadhk/restpos/d/bb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/az;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/az;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/bi;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/az;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/az;

    invoke-static {v3}, Lcom/aadhk/restpos/d/az;->a(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/bean/KitchenNote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/bi;-><init>(Lcom/aadhk/restpos/d/az;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/az;

    invoke-static {v2}, Lcom/aadhk/restpos/d/az;->b(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/KitchenNoteActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 223
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method
