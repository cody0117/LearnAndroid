.class final Lcom/aadhk/restpos/d/hy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hu;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/hu;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/hu;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/hy;-><init>(Lcom/aadhk/restpos/d/hu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->d(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/g/x;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hu;->b(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/bean/Reservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/ReservationActivity;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/x;->a(IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hy;->b:Ljava/util/Map;

    .line 445
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 449
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 452
    iget-object v1, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/ReservationActivity;->a(Ljava/util/Map;)V

    .line 453
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->e(Lcom/aadhk/restpos/d/hu;)V

    .line 462
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 456
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 457
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hy;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method