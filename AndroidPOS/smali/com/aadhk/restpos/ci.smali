.class final Lcom/aadhk/restpos/ci;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PaymentMethodActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/aadhk/restpos/ci;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 152
    check-cast p1, Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 153
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/cp;

    iget-object v2, p0, Lcom/aadhk/restpos/ci;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-direct {v1, v2, p1}, Lcom/aadhk/restpos/cp;-><init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/bean/PaymentMethod;)V

    iget-object v2, p0, Lcom/aadhk/restpos/ci;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 155
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    :cond_0
    return-void
.end method
