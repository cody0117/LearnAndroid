.class final Lcom/aadhk/restpos/d/jv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jh;

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

.field private c:Lcom/aadhk/restpos/bean/SplitBill;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/aadhk/restpos/d/jv;->c:Lcom/aadhk/restpos/bean/SplitBill;

    .line 483
    iput-wide p3, p0, Lcom/aadhk/restpos/d/jv;->d:J

    .line 484
    iput-wide p5, p0, Lcom/aadhk/restpos/d/jv;->e:J

    .line 485
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 489
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->b(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/d/jv;->d:J

    iget-wide v3, p0, Lcom/aadhk/restpos/d/jv;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/g/ab;->a(JJ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jv;->b:Ljava/util/Map;

    .line 490
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 494
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 497
    iget-object v1, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/jh;->b(Lcom/aadhk/restpos/d/jh;Ljava/util/List;)V

    .line 498
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jv;->c:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 499
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jh;->g(Lcom/aadhk/restpos/d/jh;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 500
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jh;->h(Lcom/aadhk/restpos/d/jh;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 501
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jv;->c:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setBillId(J)V

    .line 502
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    .line 503
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->finish()V

    .line 512
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 506
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 507
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jv;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
