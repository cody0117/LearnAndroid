.class final Lcom/aadhk/restpos/d/ef;
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

.field private d:Lcom/aadhk/restpos/bean/Order;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/aadhk/restpos/d/ef;->c:Lcom/aadhk/restpos/bean/OrderItem;

    .line 429
    iput-object p3, p0, Lcom/aadhk/restpos/d/ef;->d:Lcom/aadhk/restpos/bean/Order;

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ef;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->c:Lcom/aadhk/restpos/bean/OrderItem;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ef;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->d:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ef;->d:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ad;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ef;->b:Ljava/util/Map;

    .line 435
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 442
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 444
    iget-object v1, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    const v2, 0x7f080268

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 467
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/c/de;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v2}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/de;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 448
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v2, 0x7f080266

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/de;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    new-instance v0, Lcom/aadhk/restpos/d/eg;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/eg;-><init>(Lcom/aadhk/restpos/d/ef;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/de;->a(Lcom/aadhk/product/library/b/f;)V

    .line 457
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/de;->show()V

    goto :goto_0

    .line 459
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 461
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 462
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ef;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
