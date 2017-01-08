.class final Lcom/aadhk/restpos/d/ek;
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

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/du;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-wide p2, p0, Lcom/aadhk/restpos/d/ek;->c:J

    .line 476
    iput-wide p4, p0, Lcom/aadhk/restpos/d/ek;->d:J

    .line 477
    iput-wide p6, p0, Lcom/aadhk/restpos/d/ek;->e:J

    .line 478
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 482
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ek;->c:J

    iget-wide v3, p0, Lcom/aadhk/restpos/d/ek;->d:J

    iget-wide v5, p0, Lcom/aadhk/restpos/d/ek;->e:J

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/g/ad;->a(JJJ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ek;->b:Ljava/util/Map;

    .line 483
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 487
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;Ljava/util/List;)Ljava/util/List;

    .line 490
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->g(Lcom/aadhk/restpos/d/du;)V

    .line 491
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->h(Lcom/aadhk/restpos/d/du;)V

    .line 500
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 494
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 495
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ek;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
