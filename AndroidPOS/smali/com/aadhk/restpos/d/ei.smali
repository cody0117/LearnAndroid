.class final Lcom/aadhk/restpos/d/ei;
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


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/du;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/du;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ei;-><init>(Lcom/aadhk/restpos/d/du;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/ad;->c(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ei;->b:Ljava/util/Map;

    .line 681
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const v7, 0x7f080220

    const/4 v2, 0x1

    .line 685
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 688
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 690
    const-wide/16 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v5

    add-double v1, v2, v5

    move-wide v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 692
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    .line 693
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 698
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 701
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 702
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 703
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->l(Lcom/aadhk/restpos/d/du;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/aadhk/restpos/util/p;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 702
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 706
    :cond_3
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 707
    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(I)V

    .line 708
    new-instance v1, Lcom/aadhk/restpos/d/ej;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ej;-><init>(Lcom/aadhk/restpos/d/ei;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 735
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 756
    :cond_4
    :goto_3
    return-void

    .line 737
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 739
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 740
    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 741
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_3

    .line 744
    :cond_6
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 745
    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 746
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_3

    .line 748
    :cond_7
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 749
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 750
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 751
    :cond_9
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 752
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 754
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/ei;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method
