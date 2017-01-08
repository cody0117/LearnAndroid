.class final Lcom/aadhk/restpos/c/ao;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/am;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/am;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v0}, Lcom/aadhk/restpos/c/am;->a(Lcom/aadhk/restpos/c/am;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v0}, Lcom/aadhk/restpos/c/am;->g(Lcom/aadhk/restpos/c/am;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v1}, Lcom/aadhk/restpos/c/am;->b(Lcom/aadhk/restpos/c/am;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v2}, Lcom/aadhk/restpos/c/am;->c(Lcom/aadhk/restpos/c/am;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v4}, Lcom/aadhk/restpos/c/am;->d(Lcom/aadhk/restpos/c/am;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v5}, Lcom/aadhk/restpos/c/am;->e(Lcom/aadhk/restpos/c/am;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v6}, Lcom/aadhk/restpos/c/am;->f(Lcom/aadhk/restpos/c/am;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/c/ao;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/c/ao;->b:I

    .line 151
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 158
    iget v0, p0, Lcom/aadhk/restpos/c/ao;->b:I

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/c/ao;->a:Lcom/aadhk/restpos/c/am;

    invoke-static {v0}, Lcom/aadhk/restpos/c/am;->a(Lcom/aadhk/restpos/c/am;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/c/ao;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_0
    return-void
.end method
