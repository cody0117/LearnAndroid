.class final Lcom/aadhk/restpos/d/fm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ey;

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
.method constructor <init>(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->o(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v3}, Lcom/aadhk/restpos/d/ey;->m(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v4}, Lcom/aadhk/restpos/d/ey;->n(Lcom/aadhk/restpos/d/ey;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;)V

    .line 741
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->p(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/g/s;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/s;->b(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fm;->b:Ljava/util/Map;

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/fm;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/fm;->c:I

    .line 746
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 752
    iget v0, p0, Lcom/aadhk/restpos/d/fm;->c:I

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/fm;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 760
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 761
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 762
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/fm;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
