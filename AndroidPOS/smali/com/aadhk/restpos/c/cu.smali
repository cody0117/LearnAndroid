.class final Lcom/aadhk/restpos/c/cu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/OrderListActivity;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/aadhk/restpos/bean/Category;

.field final synthetic d:Lcom/aadhk/restpos/c/ct;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/ct;Lcom/aadhk/restpos/OrderListActivity;Landroid/widget/Button;Lcom/aadhk/restpos/bean/Category;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    iput-object p2, p0, Lcom/aadhk/restpos/c/cu;->a:Lcom/aadhk/restpos/OrderListActivity;

    iput-object p3, p0, Lcom/aadhk/restpos/c/cu;->b:Landroid/widget/Button;

    iput-object p4, p0, Lcom/aadhk/restpos/c/cu;->c:Lcom/aadhk/restpos/bean/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ct;->a(Lcom/aadhk/restpos/c/ct;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/cu;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/OrderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/cu;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cu;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/OrderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cu;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/c/ct;->a(Lcom/aadhk/restpos/c/ct;Landroid/widget/Button;)Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ct;->b(Lcom/aadhk/restpos/c/ct;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/c/cu;->c:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/c/ct;->a(Lcom/aadhk/restpos/c/ct;Ljava/util/List;)Ljava/util/List;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ct;->d(Lcom/aadhk/restpos/c/ct;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/a/az;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cu;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    invoke-static {v3}, Lcom/aadhk/restpos/c/ct;->c(Lcom/aadhk/restpos/c/ct;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/az;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ct;->d(Lcom/aadhk/restpos/c/ct;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/cu;->d:Lcom/aadhk/restpos/c/ct;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method
