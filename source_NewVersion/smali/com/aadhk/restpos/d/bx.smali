.class final Lcom/aadhk/restpos/d/bx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bv;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->a(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->d(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bv;->a(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v2}, Lcom/aadhk/restpos/d/bv;->b(Lcom/aadhk/restpos/d/bv;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bv;->c(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->r()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/w;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)V

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->e(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/f/l;

    move-result-object v0

    const-string v1, "prefOrderNum"

    iget-object v2, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v2}, Lcom/aadhk/restpos/d/bv;->a(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->b(Lcom/aadhk/restpos/d/bv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 199
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v4

    .line 200
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 201
    if-nez v1, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->f(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bv;->a(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bv;->b(Lcom/aadhk/restpos/d/bv;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/n;->a(JLjava/util/List;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->g(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/b/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/b/i;->a(Ljava/util/Map;)V

    .line 209
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->e(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->a(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->c(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->c(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/bx;->a:Lcom/aadhk/restpos/d/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bv;->c(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a()V

    goto :goto_0
.end method
