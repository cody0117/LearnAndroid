.class final Lcom/aadhk/restpos/d/jr;
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

.field private c:J

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/jh;JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-wide p2, p0, Lcom/aadhk/restpos/d/jr;->c:J

    .line 662
    iput-wide p4, p0, Lcom/aadhk/restpos/d/jr;->d:J

    .line 663
    iput-boolean p6, p0, Lcom/aadhk/restpos/d/jr;->e:Z

    .line 664
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 668
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->b(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/d/jr;->c:J

    iget-wide v3, p0, Lcom/aadhk/restpos/d/jr;->d:J

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/jr;->e:Z

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/g/ab;->a(JJZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jr;->b:Ljava/util/Map;

    .line 669
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 673
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    iget-object v1, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;Ljava/util/List;)Ljava/util/List;

    .line 676
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->e(Lcom/aadhk/restpos/d/jh;)V

    .line 680
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->f(Lcom/aadhk/restpos/d/jh;)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 681
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->a()V

    .line 691
    :cond_1
    :goto_0
    return-void

    .line 683
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 685
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 686
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 687
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 689
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/jr;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
