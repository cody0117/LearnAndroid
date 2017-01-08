.class final Lcom/aadhk/restpos/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DiscountActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DiscountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/aadhk/restpos/j;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 71
    check-cast p1, Lcom/aadhk/restpos/bean/Discount;

    .line 72
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/s;

    iget-object v2, p0, Lcom/aadhk/restpos/j;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/s;-><init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/bean/Discount;)V

    iget-object v2, p0, Lcom/aadhk/restpos/j;->a:Lcom/aadhk/restpos/DiscountActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 73
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method
