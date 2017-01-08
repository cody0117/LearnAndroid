.class final Lcom/aadhk/restpos/d/ed;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/du;

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

.field private c:Lcom/aadhk/restpos/bean/OrderItem;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/aadhk/restpos/d/ed;->c:Lcom/aadhk/restpos/bean/OrderItem;

    .line 349
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->c:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->c:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ed;->c:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ad;->a(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ed;->b:Ljava/util/Map;

    .line 356
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->k(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/n;->notifyDataSetChanged()V

    .line 371
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 366
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ed;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
