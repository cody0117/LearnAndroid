.class final Lcom/aadhk/restpos/d/ew;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/eu;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eu;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 145
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eu;->c(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eu;->f(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/eu;->d(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    iget-object v3, v3, Lcom/aadhk/restpos/d/eu;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    iget-object v4, v4, Lcom/aadhk/restpos/d/eu;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    iget-object v5, v5, Lcom/aadhk/restpos/d/eu;->b:Ljava/lang/String;

    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    invoke-static {v7}, Lcom/aadhk/restpos/d/eu;->e(Lcom/aadhk/restpos/d/eu;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/ew;->b:I
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

    iput v1, p0, Lcom/aadhk/restpos/d/ew;->b:I

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
    iget v0, p0, Lcom/aadhk/restpos/d/ew;->b:I

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/d/eu;

    iget-object v0, v0, Lcom/aadhk/restpos/d/eu;->f:Lcom/aadhk/restpos/ReportActivity;

    iget v1, p0, Lcom/aadhk/restpos/d/ew;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_0
    return-void
.end method
