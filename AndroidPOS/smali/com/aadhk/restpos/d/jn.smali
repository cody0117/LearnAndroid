.class final Lcom/aadhk/restpos/d/jn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/bean/SplitBill;

.field final synthetic c:Lcom/aadhk/restpos/d/jm;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/jm;ILcom/aadhk/restpos/bean/SplitBill;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/aadhk/restpos/d/jn;->c:Lcom/aadhk/restpos/d/jm;

    iput p2, p0, Lcom/aadhk/restpos/d/jn;->a:I

    iput-object p3, p0, Lcom/aadhk/restpos/d/jn;->b:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/aadhk/restpos/d/jn;->c:Lcom/aadhk/restpos/d/jm;

    iget-object v0, v0, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/jn;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 632
    new-instance v7, Lcom/aadhk/product/library/a/d;

    new-instance v0, Lcom/aadhk/restpos/d/jr;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jn;->c:Lcom/aadhk/restpos/d/jm;

    iget-object v1, v1, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    iget-object v2, p0, Lcom/aadhk/restpos/d/jn;->b:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/jn;->c:Lcom/aadhk/restpos/d/jm;

    iget-object v4, v4, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v4}, Lcom/aadhk/restpos/d/jh;->d(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/jn;->c:Lcom/aadhk/restpos/d/jm;

    iget-object v6, v6, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v6}, Lcom/aadhk/restpos/d/jh;->c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/aadhk/restpos/d/jr;-><init>(Lcom/aadhk/restpos/d/jh;JJZ)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/jn;->c:Lcom/aadhk/restpos/d/jm;

    iget-object v1, v1, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 633
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    return-void
.end method
