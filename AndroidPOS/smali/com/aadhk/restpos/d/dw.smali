.class final Lcom/aadhk/restpos/d/dw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic c:Lcom/aadhk/restpos/d/dv;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dv;Ljava/util/List;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iput-object p2, p0, Lcom/aadhk/restpos/d/dw;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->i(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v1, Lcom/aadhk/restpos/d/dx;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/dx;-><init>(Lcom/aadhk/restpos/d/dw;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 250
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->c(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 254
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->d(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 256
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->c:Lcom/aadhk/restpos/d/dv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dw;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0
.end method
