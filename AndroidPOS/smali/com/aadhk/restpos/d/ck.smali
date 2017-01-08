.class final Lcom/aadhk/restpos/d/ck;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->d(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->d(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    .line 215
    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 222
    :cond_1
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/da;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {v1, v4, v3}, Lcom/aadhk/restpos/d/da;-><init>(Lcom/aadhk/restpos/d/cf;Ljava/lang/StringBuilder;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v3, v3, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1, v3, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 223
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method
