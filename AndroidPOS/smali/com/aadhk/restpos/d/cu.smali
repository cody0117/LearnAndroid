.class final Lcom/aadhk/restpos/d/cu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/cf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/cu;-><init>(Lcom/aadhk/restpos/d/cf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 542
    invoke-static {}, Lcom/aadhk/restpos/d/cf;->a()Lcom/aadhk/restpos/g/k;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cf;->b(Lcom/aadhk/restpos/d/cf;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/k;->b(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cu;->b:Ljava/util/Map;

    .line 543
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 547
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    const-string v1, "25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v1, v1, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 550
    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 551
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 563
    :goto_0
    return-void

    .line 552
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->c(Lcom/aadhk/restpos/d/cf;)Lcom/aadhk/restpos/d/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cq;->notifyDataSetChanged()V

    .line 554
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()V

    goto :goto_0

    .line 555
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 557
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 558
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
