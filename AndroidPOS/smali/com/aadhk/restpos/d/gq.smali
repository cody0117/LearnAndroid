.class final Lcom/aadhk/restpos/d/gq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gn;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gn;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gn;->a(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v2}, Lcom/aadhk/restpos/d/gn;->b(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v3}, Lcom/aadhk/restpos/d/gn;->c(Lcom/aadhk/restpos/d/gn;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v4}, Lcom/aadhk/restpos/d/gn;->d(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v5}, Lcom/aadhk/restpos/d/gn;->e(Lcom/aadhk/restpos/d/gn;)Ljava/lang/String;

    iget-object v5, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v5}, Lcom/aadhk/restpos/d/gn;->f(Lcom/aadhk/restpos/d/gn;)D

    iget-object v5, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v5, v5, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/gq;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 265
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/gq;->b:I

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 272
    iget v0, p0, Lcom/aadhk/restpos/d/gq;->b:I

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f0801ab

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gq;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 276
    iget v1, p0, Lcom/aadhk/restpos/d/gq;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 277
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0
.end method
