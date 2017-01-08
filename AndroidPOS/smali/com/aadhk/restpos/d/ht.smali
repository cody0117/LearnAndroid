.class final Lcom/aadhk/restpos/d/ht;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hr;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/hr;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    const v1, 0x7f0801d0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/hr;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hr;->g(Lcom/aadhk/restpos/d/hr;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hr;->a(Lcom/aadhk/restpos/d/hr;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hr;->b(Lcom/aadhk/restpos/d/hr;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v4}, Lcom/aadhk/restpos/d/hr;->c(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v5}, Lcom/aadhk/restpos/d/hr;->d(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v6}, Lcom/aadhk/restpos/d/hr;->e(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v7}, Lcom/aadhk/restpos/d/hr;->f(Lcom/aadhk/restpos/d/hr;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/ht;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/ht;->b:I

    .line 131
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 138
    iget v0, p0, Lcom/aadhk/restpos/d/ht;->b:I

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/ht;->a:Lcom/aadhk/restpos/d/hr;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hr;->h(Lcom/aadhk/restpos/d/hr;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/ht;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_0
    return-void
.end method
