.class final Lcom/aadhk/restpos/d/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bm;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 198
    check-cast p1, Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->a(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    const-string v1, "serverIp"

    invoke-virtual {v0, v1, p1}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->a()V

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->b()Lcom/aadhk/restpos/g/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bm;->a(Lcom/aadhk/restpos/d/bm;Lcom/aadhk/restpos/g/i;)Lcom/aadhk/restpos/g/i;

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->c(Lcom/aadhk/restpos/d/bm;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/bp;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/bp;-><init>(Lcom/aadhk/restpos/d/bm;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bn;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v2}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 204
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method
