.class final Lcom/aadhk/restpos/d/ck;
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
    .line 1038
    iput-object p1, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->y(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->v(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/e/f;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 1045
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/ck;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1048
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/ck;->b:I

    .line 1049
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 1055
    iget v0, p0, Lcom/aadhk/restpos/d/ck;->b:I

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/aadhk/restpos/d/ck;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/ck;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1058
    :cond_0
    return-void
.end method
