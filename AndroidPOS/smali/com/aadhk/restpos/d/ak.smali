.class public final Lcom/aadhk/restpos/d/ak;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/aadhk/restpos/bean/Category;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/aadhk/restpos/bean/Category;)Lcom/aadhk/restpos/d/ak;
    .locals 4
    .parameter

    .prologue
    .line 319
    new-instance v1, Lcom/aadhk/restpos/d/ak;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ak;-><init>()V

    .line 320
    iput-object p0, v1, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/bean/Category;

    .line 321
    invoke-static {}, Lcom/aadhk/restpos/d/ag;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ak;->a:Ljava/util/List;

    .line 322
    return-object v1
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 328
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    const v0, 0x7f03007e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ak;->c:Landroid/view/View;

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/ak;->c:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 8

    .prologue
    .line 338
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/aadhk/restpos/d/ak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/Item;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setOrderQty(I)V

    invoke-static {}, Lcom/aadhk/restpos/d/ag;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setOrderQty(I)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ak;->c:Landroid/view/View;

    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/a/h;

    invoke-static {}, Lcom/aadhk/restpos/d/ag;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ak;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ak;->b:Lcom/aadhk/restpos/bean/Category;

    invoke-static {}, Lcom/aadhk/restpos/d/ag;->f()Lcom/aadhk/restpos/g/ad;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/a/h;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Lcom/aadhk/restpos/g/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    return-void
.end method
