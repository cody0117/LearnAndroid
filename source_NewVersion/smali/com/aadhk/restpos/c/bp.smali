.class final Lcom/aadhk/restpos/c/bp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bn;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/aadhk/restpos/c/bp;->a:Lcom/aadhk/restpos/c/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/bp;->a:Lcom/aadhk/restpos/c/bn;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bn;->d(Lcom/aadhk/restpos/c/bn;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bp;->a:Lcom/aadhk/restpos/c/bn;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bn;->a(Lcom/aadhk/restpos/c/bn;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/bp;->a:Lcom/aadhk/restpos/c/bn;

    invoke-static {v2}, Lcom/aadhk/restpos/c/bn;->b(Lcom/aadhk/restpos/c/bn;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/c/bp;->a:Lcom/aadhk/restpos/c/bn;

    invoke-static {v4}, Lcom/aadhk/restpos/c/bn;->c(Lcom/aadhk/restpos/c/bn;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;)V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/c/bp;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/c/bp;->b:I

    .line 127
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 134
    iget v0, p0, Lcom/aadhk/restpos/c/bp;->b:I

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/c/bp;->a:Lcom/aadhk/restpos/c/bn;

    iget-object v0, v0, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    iget v1, p0, Lcom/aadhk/restpos/c/bp;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    :cond_0
    return-void
.end method
