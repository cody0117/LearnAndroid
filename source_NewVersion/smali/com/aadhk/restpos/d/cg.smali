.class final Lcom/aadhk/restpos/d/cg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cd;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->y(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->v(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v3}, Lcom/aadhk/restpos/d/cd;->w(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->x(Lcom/aadhk/restpos/d/cd;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;)V

    .line 953
    iget-object v0, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->z(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/m;->f(J)V

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/cg;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 957
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/cg;->b:I

    .line 958
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 964
    iget v0, p0, Lcom/aadhk/restpos/d/cg;->b:I

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/aadhk/restpos/d/cg;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/cg;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 967
    :cond_0
    return-void
.end method
