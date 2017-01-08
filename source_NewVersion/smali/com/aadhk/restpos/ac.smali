.class final Lcom/aadhk/restpos/ac;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bu;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bs;

.field final synthetic b:Lcom/aadhk/restpos/ListOrdersActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ListOrdersActivity;Lcom/aadhk/restpos/c/bs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/ac;->a:Lcom/aadhk/restpos/c/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/Item;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/ListOrdersActivity;->a(Lcom/aadhk/restpos/ListOrdersActivity;J)J

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ListOrdersActivity;->b(Lcom/aadhk/restpos/ListOrdersActivity;)Lcom/aadhk/restpos/b/m;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/ListOrdersActivity;->a(Lcom/aadhk/restpos/ListOrdersActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/m;->d(J)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/ListOrdersActivity;->a(Lcom/aadhk/restpos/ListOrdersActivity;Ljava/util/List;)Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    new-instance v1, Lcom/aadhk/restpos/a/ab;

    iget-object v2, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/ListOrdersActivity;->c(Lcom/aadhk/restpos/ListOrdersActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ab;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/ListOrdersActivity;->a(Lcom/aadhk/restpos/ListOrdersActivity;Lcom/aadhk/restpos/a/ab;)Lcom/aadhk/restpos/a/ab;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ListOrdersActivity;->e(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ListOrdersActivity;->d(Lcom/aadhk/restpos/ListOrdersActivity;)Lcom/aadhk/restpos/a/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->a:Lcom/aadhk/restpos/c/bs;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bs;->dismiss()V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ListOrdersActivity;->f(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ListOrdersActivity;->g(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/ac;->b:Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ListOrdersActivity;->g(Lcom/aadhk/restpos/ListOrdersActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 99
    return-void
.end method
