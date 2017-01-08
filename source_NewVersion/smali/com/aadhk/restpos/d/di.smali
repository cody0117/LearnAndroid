.class final Lcom/aadhk/restpos/d/di;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dh;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dh;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dh;->a(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/di;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/di;->b:I

    .line 191
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/aadhk/restpos/d/di;->b:I

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 200
    const v1, 0x7f090174

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    .line 201
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->b()V

    .line 202
    new-instance v1, Lcom/aadhk/restpos/d/dj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/dj;-><init>(Lcom/aadhk/restpos/d/di;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 215
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 218
    iget v1, p0, Lcom/aadhk/restpos/d/di;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 219
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0
.end method
