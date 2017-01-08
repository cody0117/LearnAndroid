.class public final Lcom/aadhk/restpos/d/p;
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
    .line 325
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/aadhk/restpos/bean/Category;)Lcom/aadhk/restpos/d/p;
    .locals 4
    .parameter

    .prologue
    .line 331
    new-instance v1, Lcom/aadhk/restpos/d/p;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/p;-><init>()V

    .line 332
    iput-object p0, v1, Lcom/aadhk/restpos/d/p;->b:Lcom/aadhk/restpos/bean/Category;

    .line 333
    invoke-static {}, Lcom/aadhk/restpos/d/l;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/aadhk/restpos/d/p;->a:Ljava/util/List;

    .line 334
    return-object v1
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 340
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/p;->c:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->c:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 8

    .prologue
    .line 350
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->a:Ljava/util/List;

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

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setNum(I)V

    invoke-static {}, Lcom/aadhk/restpos/d/l;->d()Ljava/util/List;

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

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getNum()I

    move-result v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/Item;->setNum(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/p;->c:Landroid/view/View;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/GridView;

    new-instance v0, Lcom/aadhk/restpos/a/e;

    invoke-static {}, Lcom/aadhk/restpos/d/l;->a()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/p;->a:Ljava/util/List;

    invoke-static {}, Lcom/aadhk/restpos/d/l;->d()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/p;->b:Lcom/aadhk/restpos/bean/Category;

    invoke-static {}, Lcom/aadhk/restpos/d/l;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/a/e;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    return-void
.end method
