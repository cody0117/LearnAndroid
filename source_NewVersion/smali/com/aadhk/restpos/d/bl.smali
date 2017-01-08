.class final Lcom/aadhk/restpos/d/bl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->a(Lcom/aadhk/restpos/d/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 187
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getBillId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 189
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v3, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v3, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v3, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->c(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 205
    iget-object v3, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/bk;->b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    new-instance v3, Lcom/aadhk/product/library/b/a;

    iget-object v4, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v4}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3}, Lcom/aadhk/product/library/b/a;->a()V

    .line 211
    new-instance v1, Lcom/aadhk/restpos/d/bm;

    invoke-direct {v1, p0, v2, v0}, Lcom/aadhk/restpos/d/bm;-><init>(Lcom/aadhk/restpos/d/bl;Ljava/util/List;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v3, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 241
    invoke-virtual {v3}, Lcom/aadhk/product/library/b/a;->show()V

    .line 248
    :cond_2
    :goto_0
    return v6

    .line 244
    :cond_3
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 245
    iget-object v1, p0, Lcom/aadhk/restpos/d/bl;->a:Lcom/aadhk/restpos/d/bk;

    const v2, 0x7f0901ed

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/bk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0
.end method
