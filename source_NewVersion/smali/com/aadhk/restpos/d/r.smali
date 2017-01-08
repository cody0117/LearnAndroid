.class final Lcom/aadhk/restpos/d/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/q;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/aadhk/restpos/d/r;->a:Lcom/aadhk/restpos/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 316
    iget-object v0, p0, Lcom/aadhk/restpos/d/r;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;I)I

    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/d/r;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->e(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/u;->notifyDataSetChanged()V

    .line 318
    invoke-static {}, Lcom/aadhk/restpos/d/q;->a()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/POSApp;->a(I)V

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/d/r;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->f(Lcom/aadhk/restpos/d/q;)Landroid/widget/GridView;

    move-result-object v6

    new-instance v0, Lcom/aadhk/restpos/a/e;

    invoke-static {}, Lcom/aadhk/restpos/d/q;->a()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-static {}, Lcom/aadhk/restpos/d/q;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/aadhk/restpos/d/q;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {}, Lcom/aadhk/restpos/d/q;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/aadhk/restpos/d/q;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aadhk/restpos/bean/Category;

    invoke-static {}, Lcom/aadhk/restpos/d/q;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/a/e;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Ljava/util/List;Lcom/aadhk/restpos/bean/Category;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    return-void
.end method
