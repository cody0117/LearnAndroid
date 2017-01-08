.class final Lcom/aadhk/restpos/ed;
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


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/ed;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/ad;->d(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ed;->b:Ljava/util/Map;

    .line 554
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 558
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 561
    new-instance v1, Lcom/aadhk/restpos/c/de;

    iget-object v2, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/de;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 562
    const v0, 0x7f080266

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/de;->setTitle(I)V

    .line 563
    new-instance v0, Lcom/aadhk/restpos/ee;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/ee;-><init>(Lcom/aadhk/restpos/ed;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/de;->a(Lcom/aadhk/product/library/b/f;)V

    .line 570
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/de;->show()V

    .line 579
    :goto_0
    return-void

    .line 571
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 573
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 574
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
