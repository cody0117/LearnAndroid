.class final Lcom/aadhk/restpos/d/dk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dh;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dh;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dh;->a(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v2}, Lcom/aadhk/restpos/d/dh;->b(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v3}, Lcom/aadhk/restpos/d/dh;->c(Lcom/aadhk/restpos/d/dh;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v4}, Lcom/aadhk/restpos/d/dh;->d(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v5}, Lcom/aadhk/restpos/d/dh;->e(Lcom/aadhk/restpos/d/dh;)Ljava/lang/String;

    iget-object v5, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v5}, Lcom/aadhk/restpos/d/dh;->f(Lcom/aadhk/restpos/d/dh;)D

    iget-object v5, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v5, v5, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/dk;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 270
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/dk;->b:I

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 277
    iget v0, p0, Lcom/aadhk/restpos/d/dk;->b:I

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f090176

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dk;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 281
    iget v1, p0, Lcom/aadhk/restpos/d/dk;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 282
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0
.end method
