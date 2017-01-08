.class final Lcom/aadhk/restpos/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Category;

.field final synthetic b:Lcom/aadhk/restpos/MgrCategoryActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/aadhk/restpos/ad;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/ad;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/ad;->a:Lcom/aadhk/restpos/bean/Category;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/an;

    iget-object v2, p0, Lcom/aadhk/restpos/ad;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/ad;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/an;-><init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V

    iget-object v2, p0, Lcom/aadhk/restpos/ad;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 204
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method
