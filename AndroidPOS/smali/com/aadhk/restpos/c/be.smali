.class final Lcom/aadhk/restpos/c/be;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bc;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bc;->a(Lcom/aadhk/restpos/c/bc;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bc;->g(Lcom/aadhk/restpos/c/bc;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bc;->b(Lcom/aadhk/restpos/c/bc;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v2}, Lcom/aadhk/restpos/c/bc;->c(Lcom/aadhk/restpos/c/bc;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v4}, Lcom/aadhk/restpos/c/bc;->d(Lcom/aadhk/restpos/c/bc;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v5}, Lcom/aadhk/restpos/c/bc;->e(Lcom/aadhk/restpos/c/bc;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v6}, Lcom/aadhk/restpos/c/bc;->f(Lcom/aadhk/restpos/c/bc;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/c/be;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/c/be;->b:I

    .line 142
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 149
    iget v0, p0, Lcom/aadhk/restpos/c/be;->b:I

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/restpos/c/bc;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bc;->a(Lcom/aadhk/restpos/c/bc;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/c/be;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_0
    return-void
.end method
