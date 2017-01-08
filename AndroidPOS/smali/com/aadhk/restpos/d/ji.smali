.class final Lcom/aadhk/restpos/d/ji;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/SplitBill;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/d/jh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/aadhk/restpos/d/ji;->c:Lcom/aadhk/restpos/d/jh;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ji;->a:Lcom/aadhk/restpos/bean/SplitBill;

    iput p3, p0, Lcom/aadhk/restpos/d/ji;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/ji;->a:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/SplitBill;->setAmount(D)V

    .line 181
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/jw;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ji;->c:Lcom/aadhk/restpos/d/jh;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ji;->a:Lcom/aadhk/restpos/bean/SplitBill;

    iget v4, p0, Lcom/aadhk/restpos/d/ji;->b:I

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/d/jw;-><init>(Lcom/aadhk/restpos/d/jh;Lcom/aadhk/restpos/bean/SplitBill;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ji;->c:Lcom/aadhk/restpos/d/jh;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 182
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method
