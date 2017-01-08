.class final Lcom/aadhk/restpos/eh;
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

.field private c:I


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/eh;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ad;->a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/eh;->b:Ljava/util/Map;

    .line 714
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 718
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 719
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v0, v0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->e(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 723
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/eh;->c:I

    .line 730
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 733
    :goto_1
    iget v0, p0, Lcom/aadhk/restpos/eh;->c:I

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v1, p0, Lcom/aadhk/restpos/eh;->c:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    .line 745
    :goto_2
    return-void

    .line 725
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->g(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->e(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TakeOrderActivity;->f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/g;->a(Ljava/util/List;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Z)V

    .line 727
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/eh;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 737
    :cond_3
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 738
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 739
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 740
    :cond_5
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 741
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 743
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/eh;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
