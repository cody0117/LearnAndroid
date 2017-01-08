.class final Lcom/aadhk/restpos/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ae;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 217
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ak;

    iget-object v2, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ae;

    iget-object v2, v2, Lcom/aadhk/restpos/ae;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ae;

    iget-object v3, v3, Lcom/aadhk/restpos/ae;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/ak;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;J)V

    iget-object v2, p0, Lcom/aadhk/restpos/af;->a:Lcom/aadhk/restpos/ae;

    iget-object v2, v2, Lcom/aadhk/restpos/ae;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 218
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    return-void
.end method
