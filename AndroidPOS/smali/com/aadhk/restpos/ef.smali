.class final Lcom/aadhk/restpos/ef;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TakeOrderActivity;

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

.field private c:J


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-wide p2, p0, Lcom/aadhk/restpos/ef;->c:J

    .line 454
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/ef;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/ad;->b(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ef;->b:Ljava/util/Map;

    .line 459
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 463
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v3, :cond_0

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 468
    const-string v2, "bundleSplitType"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 469
    const-string v2, "bundleOrder"

    iget-object v3, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 473
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 503
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v4, :cond_1

    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 476
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 477
    const-string v2, "bundleSplitType"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 478
    const-string v2, "bundleOrder"

    iget-object v3, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 479
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 482
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Landroid/view/View;)V

    goto :goto_0

    .line 495
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 497
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 498
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/ef;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
