.class final Lcom/aadhk/restpos/bu;
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

.field private c:Lcom/aadhk/restpos/bean/Order;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/aadhk/restpos/bu;->c:Lcom/aadhk/restpos/bean/Order;

    .line 187
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->b(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/g/o;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bu;->c:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/o;->c(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bu;->b:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/bu;->c:Lcom/aadhk/restpos/bean/Order;

    iget-object v0, p0, Lcom/aadhk/restpos/bu;->b:Ljava/util/Map;

    const-string v3, "serviceData"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-static {v1, v2, v0, v4}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/OrderListActivity;->finish()V

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 201
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
