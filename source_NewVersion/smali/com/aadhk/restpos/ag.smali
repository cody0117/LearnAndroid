.class final Lcom/aadhk/restpos/ag;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ListTableActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ListTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ListTableActivity;->b(Lcom/aadhk/restpos/ListTableActivity;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/ListTableActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/ListTableActivity;->a(Lcom/aadhk/restpos/ListTableActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/e/f;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/ag;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/ag;->b:I

    .line 311
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 317
    iget v0, p0, Lcom/aadhk/restpos/ag;->b:I

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/ag;->a:Lcom/aadhk/restpos/ListTableActivity;

    iget v1, p0, Lcom/aadhk/restpos/ag;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    :cond_0
    return-void
.end method
