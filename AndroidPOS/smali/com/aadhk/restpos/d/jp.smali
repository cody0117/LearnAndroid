.class final Lcom/aadhk/restpos/d/jp;
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


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p2, p0, Lcom/aadhk/restpos/d/jp;->c:Lcom/aadhk/restpos/bean/SplitBill;

    .line 451
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->b(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jp;->c:Lcom/aadhk/restpos/bean/SplitBill;

    iget-object v2, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/g/ab;->a(Lcom/aadhk/restpos/bean/SplitBill;J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jp;->b:Ljava/util/Map;

    .line 456
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 460
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;Ljava/util/List;)Ljava/util/List;

    .line 463
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 464
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->e(Lcom/aadhk/restpos/d/jh;)V

    .line 473
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 467
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jp;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
