.class final Lcom/aadhk/restpos/d/bo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/aadhk/restpos/d/bo;->b:Lcom/aadhk/restpos/d/bk;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/n;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->f(Lcom/aadhk/restpos/d/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, p0, Lcom/aadhk/restpos/d/bo;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 274
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/bo;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->g(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/j;->notifyDataSetChanged()V

    .line 279
    return-void
.end method
