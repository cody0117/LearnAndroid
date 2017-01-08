.class final Lcom/aadhk/restpos/d/fa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ey;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->o(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v3}, Lcom/aadhk/restpos/d/ey;->m(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v4}, Lcom/aadhk/restpos/d/ey;->n(Lcom/aadhk/restpos/d/ey;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;)V

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/fa;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 783
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/fa;->b:I

    .line 784
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 790
    iget v0, p0, Lcom/aadhk/restpos/d/fa;->b:I

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/aadhk/restpos/d/fa;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/fa;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 793
    :cond_0
    return-void
.end method
