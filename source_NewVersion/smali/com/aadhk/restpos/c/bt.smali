.class final Lcom/aadhk/restpos/c/bt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ListOrdersActivity;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/aadhk/restpos/bean/Category;

.field final synthetic d:Lcom/aadhk/restpos/c/bs;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bs;Lcom/aadhk/restpos/ListOrdersActivity;Landroid/widget/Button;Lcom/aadhk/restpos/bean/Category;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    iput-object p2, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/ListOrdersActivity;

    iput-object p3, p0, Lcom/aadhk/restpos/c/bt;->b:Landroid/widget/Button;

    iput-object p4, p0, Lcom/aadhk/restpos/c/bt;->c:Lcom/aadhk/restpos/bean/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bs;->a(Lcom/aadhk/restpos/c/bs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/ListOrdersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/bt;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/ListOrdersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/c/bs;->a(Lcom/aadhk/restpos/c/bs;Landroid/widget/Button;)Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bs;->b(Lcom/aadhk/restpos/c/bs;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/c/bt;->c:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/c/bs;->a(Lcom/aadhk/restpos/c/bs;Ljava/util/List;)Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bs;->d(Lcom/aadhk/restpos/c/bs;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/a/as;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/ListOrdersActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    invoke-static {v3}, Lcom/aadhk/restpos/c/bs;->c(Lcom/aadhk/restpos/c/bs;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/as;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bs;->d(Lcom/aadhk/restpos/c/bs;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->d:Lcom/aadhk/restpos/c/bs;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-void
.end method
