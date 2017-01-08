.class final Lcom/aadhk/restpos/dx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/aadhk/restpos/TakeOrderActivity;

.field private c:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/aadhk/restpos/dx;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/dx;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/dx;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->g(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/dx;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->m(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/dx;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/dx;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)V

    .line 909
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/dx;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 911
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 912
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/dx;->c:I

    .line 913
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 919
    iget v0, p0, Lcom/aadhk/restpos/dx;->c:I

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/aadhk/restpos/dx;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v1, p0, Lcom/aadhk/restpos/dx;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 922
    :cond_0
    return-void
.end method
