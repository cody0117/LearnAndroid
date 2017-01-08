.class final Lcom/aadhk/restpos/d/am;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/al;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/al;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/d/al;->a(Lcom/aadhk/restpos/d/al;I)I

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->e(Lcom/aadhk/restpos/d/al;)Lcom/aadhk/restpos/d/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ao;->notifyDataSetChanged()V

    .line 324
    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/POSApp;->a(I)V

    .line 326
    invoke-static {}, Lcom/aadhk/restpos/d/al;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/aadhk/restpos/d/al;->c()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v2}, Lcom/aadhk/restpos/d/al;->f(Lcom/aadhk/restpos/d/al;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 327
    iget-object v1, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 329
    iget-object v0, p0, Lcom/aadhk/restpos/d/am;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->g(Lcom/aadhk/restpos/d/al;)Landroid/widget/GridView;

    move-result-object v2

    new-instance v3, Lcom/aadhk/restpos/a/h;

    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v4

    invoke-static {}, Lcom/aadhk/restpos/d/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-static {}, Lcom/aadhk/restpos/d/al;->e()Lcom/aadhk/restpos/g/ad;

    move-result-object v5

    invoke-direct {v3, v4, v1, v0, v5}, Lcom/aadhk/restpos/a/h;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Lcom/aadhk/restpos/g/ad;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    return-void
.end method
