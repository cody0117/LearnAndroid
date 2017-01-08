.class final Lcom/aadhk/restpos/bt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/OrderListActivity;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/aadhk/restpos/bean/Item;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/bean/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/aadhk/restpos/bt;->c:Lcom/aadhk/restpos/bean/Item;

    .line 154
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->b(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/g/o;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bt;->c:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/o;->a(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bt;->b:Ljava/util/Map;

    .line 158
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bt;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/OrderListActivity;->a(Lcom/aadhk/restpos/OrderListActivity;Ljava/util/List;)Ljava/util/List;

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    new-instance v1, Lcom/aadhk/restpos/a/ah;

    iget-object v2, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/OrderListActivity;->c(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ah;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/OrderListActivity;->a(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/a/ah;)Lcom/aadhk/restpos/a/ah;

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->e(Lcom/aadhk/restpos/OrderListActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/OrderListActivity;->d(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/a/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->g(Lcom/aadhk/restpos/OrderListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->h(Lcom/aadhk/restpos/OrderListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->h(Lcom/aadhk/restpos/OrderListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bt;->c:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/bt;->c:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/OrderListActivity;->a(Lcom/aadhk/restpos/OrderListActivity;J)J

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 174
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/bt;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
