.class final Lcom/aadhk/restpos/d/fb;
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
    .line 867
    iput-object p1, p0, Lcom/aadhk/restpos/d/fb;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fb;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->o(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fb;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ey;->l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/e/g;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 874
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/fb;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 877
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/fb;->b:I

    .line 878
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 884
    iget v0, p0, Lcom/aadhk/restpos/d/fb;->b:I

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/aadhk/restpos/d/fb;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/fb;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 887
    :cond_0
    return-void
.end method
