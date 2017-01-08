.class final Lcom/aadhk/restpos/d/dv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/du;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/du;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->d(Lcom/aadhk/restpos/d/du;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 204
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getBillId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 205
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v4, 0x7f08012e

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v4, 0x7f08012f

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v4, 0x7f080130

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v3}, Lcom/aadhk/restpos/d/du;->i(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v4, 0x7f080131

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 220
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v4, 0x7f080132

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v4, 0x7f080133

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 227
    new-instance v3, Lcom/aadhk/product/library/b/a;

    iget-object v4, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v4}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Lcom/aadhk/product/library/b/a;->a()V

    .line 229
    new-instance v1, Lcom/aadhk/restpos/d/dw;

    invoke-direct {v1, p0, v2, v0}, Lcom/aadhk/restpos/d/dw;-><init>(Lcom/aadhk/restpos/d/dv;Ljava/util/List;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v3, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 261
    invoke-virtual {v3}, Lcom/aadhk/product/library/b/a;->show()V

    .line 283
    :cond_2
    :goto_0
    return v6

    .line 264
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iget-object v2, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    const v3, 0x7f080134

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/d/du;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Lcom/aadhk/product/library/b/a;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v3}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Lcom/aadhk/product/library/b/a;->a()V

    .line 268
    new-instance v1, Lcom/aadhk/restpos/d/dy;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/dy;-><init>(Lcom/aadhk/restpos/d/dv;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v2, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 275
    invoke-virtual {v2}, Lcom/aadhk/product/library/b/a;->show()V

    goto :goto_0

    .line 279
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dv;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 280
    const v1, 0x7f08022c

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 281
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0
.end method
