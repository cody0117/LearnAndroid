.class final Lcom/aadhk/restpos/ag;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrCategoryActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v1, Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Category;-><init>()V

    .line 234
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getSequence()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Category;->setSequence(I)V

    .line 238
    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/ai;

    iget-object v3, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {v2, v3, v1}, Lcom/aadhk/restpos/ai;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V

    iget-object v1, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {v0, v2, v1, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 239
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method
