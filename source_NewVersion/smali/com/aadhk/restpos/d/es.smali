.class final Lcom/aadhk/restpos/d/es;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/eq;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eq;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->a(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/ReportListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->h(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/eq;->b(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eq;->c(Lcom/aadhk/restpos/d/eq;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v4}, Lcom/aadhk/restpos/d/eq;->d(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v5}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v6}, Lcom/aadhk/restpos/d/eq;->f(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v7}, Lcom/aadhk/restpos/d/eq;->g(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/es;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/es;->b:I

    .line 138
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 145
    iget v0, p0, Lcom/aadhk/restpos/d/es;->b:I

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/es;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->a(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/es;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_0
    return-void
.end method
