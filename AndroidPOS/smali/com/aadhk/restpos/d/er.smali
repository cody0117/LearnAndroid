.class final Lcom/aadhk/restpos/d/er;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/eq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eq;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/aadhk/restpos/d/er;->a:Lcom/aadhk/restpos/d/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 170
    check-cast p1, Lcom/aadhk/restpos/bean/CashRegister;

    .line 171
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ev;

    iget-object v2, p0, Lcom/aadhk/restpos/d/er;->a:Lcom/aadhk/restpos/d/eq;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/d/ev;-><init>(Lcom/aadhk/restpos/d/eq;Lcom/aadhk/restpos/bean/CashRegister;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/er;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 172
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method
