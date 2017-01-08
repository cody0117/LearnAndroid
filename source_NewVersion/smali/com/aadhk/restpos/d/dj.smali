.class final Lcom/aadhk/restpos/d/dj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/di;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/di;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 207
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/di;

    iget-object v1, v1, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/di;

    iget-object v2, v2, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v2, v2, Lcom/aadhk/restpos/d/dh;->m:Lcom/aadhk/product/library/a/b;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/di;

    iget-object v3, v3, Lcom/aadhk/restpos/d/di;->a:Lcom/aadhk/restpos/d/dh;

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 209
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
