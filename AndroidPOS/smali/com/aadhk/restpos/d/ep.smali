.class final Lcom/aadhk/restpos/d/ep;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/en;

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


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/en;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/en;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ep;-><init>(Lcom/aadhk/restpos/d/en;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->d(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v1}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v2}, Lcom/aadhk/restpos/d/en;->b(Lcom/aadhk/restpos/d/en;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v3}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->m()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/g/ad;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ep;->b:Ljava/util/Map;

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v1}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderCount(I)V

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->d(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v1}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v2}, Lcom/aadhk/restpos/d/en;->b(Lcom/aadhk/restpos/d/en;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/ad;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ep;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v1}, Lcom/aadhk/restpos/d/en;->b(Lcom/aadhk/restpos/d/en;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->e(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    .line 229
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;Lcom/aadhk/restpos/bean/Order;)Lcom/aadhk/restpos/bean/Order;

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v1}, Lcom/aadhk/restpos/d/en;->a(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/bean/Order;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b()V

    goto :goto_0

    .line 221
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ep;->a:Lcom/aadhk/restpos/d/en;

    invoke-static {v0}, Lcom/aadhk/restpos/d/en;->c(Lcom/aadhk/restpos/d/en;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
