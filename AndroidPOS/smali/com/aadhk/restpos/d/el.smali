.class final Lcom/aadhk/restpos/d/el;
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

.field private d:D


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;D)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/aadhk/restpos/d/el;->c:Lcom/aadhk/restpos/bean/OrderItem;

    .line 381
    iput-wide p3, p0, Lcom/aadhk/restpos/d/el;->d:D

    .line 382
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->c:Lcom/aadhk/restpos/bean/OrderItem;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/el;->d:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/el;->c:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ad;->c(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/el;->b:Ljava/util/Map;

    .line 388
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->k(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/n;->notifyDataSetChanged()V

    .line 395
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->h(Lcom/aadhk/restpos/d/du;)V

    .line 404
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 398
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 399
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/el;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
