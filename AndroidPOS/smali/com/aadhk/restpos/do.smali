.class final Lcom/aadhk/restpos/do;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TableListActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TableListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/aadhk/restpos/do;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/do;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TableListActivity;->h(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/do;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TableListActivity;->g(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/e/g;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/do;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/do;->b:I

    .line 489
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 495
    iget v0, p0, Lcom/aadhk/restpos/do;->b:I

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/aadhk/restpos/do;->a:Lcom/aadhk/restpos/TableListActivity;

    iget v1, p0, Lcom/aadhk/restpos/do;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    :cond_0
    return-void
.end method
