.class final Lcom/aadhk/restpos/d/hc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gz;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gz;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gz;->g(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gz;->c(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-static {v2}, Lcom/aadhk/restpos/d/gz;->d(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-static {v3}, Lcom/aadhk/restpos/d/gz;->e(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-static {v4}, Lcom/aadhk/restpos/d/gz;->f(Lcom/aadhk/restpos/d/gz;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;)V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/hc;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/hc;->b:I

    .line 235
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 242
    iget v0, p0, Lcom/aadhk/restpos/d/hc;->b:I

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/d/hc;->a:Lcom/aadhk/restpos/d/gz;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gz;->b(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/ReceiptListActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/hc;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_0
    return-void
.end method
