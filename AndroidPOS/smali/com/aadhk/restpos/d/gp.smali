.class final Lcom/aadhk/restpos/d/gp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/go;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/go;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/aadhk/restpos/d/gp;->a:Lcom/aadhk/restpos/d/go;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 210
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gp;->a:Lcom/aadhk/restpos/d/go;

    iget-object v1, v1, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->n:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gp;->a:Lcom/aadhk/restpos/d/go;

    iget-object v2, v2, Lcom/aadhk/restpos/d/go;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v2, v2, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 211
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-void
.end method
