.class final Lcom/aadhk/restpos/d/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic c:Lcom/aadhk/restpos/d/bl;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bl;Ljava/util/List;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bm;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v1, v1, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->a(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->c(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v1, v1, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance v1, Lcom/aadhk/restpos/d/bn;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bn;-><init>(Lcom/aadhk/restpos/d/bm;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 232
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->c(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0

    .line 236
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/d/bm;->c:Lcom/aadhk/restpos/d/bl;

    iget-object v0, v0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bm;->b:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0
.end method
