.class final Lcom/aadhk/restpos/d/go;
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
    .line 184
    iput-object p1, p0, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gn;->a(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/go;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/go;->b:I

    .line 195
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/aadhk/restpos/d/go;->b:I

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 204
    const v1, 0x7f0801a9

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    .line 205
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->b()V

    .line 206
    new-instance v1, Lcom/aadhk/restpos/d/gp;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/gp;-><init>(Lcom/aadhk/restpos/d/go;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 214
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 217
    iget v1, p0, Lcom/aadhk/restpos/d/go;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 218
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0
.end method
