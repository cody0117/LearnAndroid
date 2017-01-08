.class final Lcom/aadhk/restpos/d/cm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/aadhk/restpos/d/cm;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    check-cast p1, [Z

    .line 309
    aget-boolean v0, p1, v2

    if-eqz v0, :cond_2

    move v0, v1

    .line 312
    :goto_0
    aget-boolean v1, p1, v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 315
    :goto_1
    aget-boolean v3, p1, v3

    if-eqz v3, :cond_0

    .line 316
    const/4 v3, 0x3

    .line 319
    :goto_2
    new-instance v4, Lcom/aadhk/product/library/a/d;

    new-instance v5, Lcom/aadhk/restpos/d/cz;

    iget-object v6, p0, Lcom/aadhk/restpos/d/cm;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {v5, v6, v0, v1, v3}, Lcom/aadhk/restpos/d/cz;-><init>(Lcom/aadhk/restpos/d/cf;III)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cm;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {v4, v5, v0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 320
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    return-void

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
