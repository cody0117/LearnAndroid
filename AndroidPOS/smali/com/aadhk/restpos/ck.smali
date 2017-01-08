.class final Lcom/aadhk/restpos/ck;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/cj;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/cj;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/aadhk/restpos/ck;->a:Lcom/aadhk/restpos/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/cn;

    iget-object v2, p0, Lcom/aadhk/restpos/ck;->a:Lcom/aadhk/restpos/cj;

    iget-object v2, v2, Lcom/aadhk/restpos/cj;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/ck;->a:Lcom/aadhk/restpos/cj;

    iget-object v3, v3, Lcom/aadhk/restpos/cj;->a:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/PaymentMethod;->getId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/cn;-><init>(Lcom/aadhk/restpos/PaymentMethodActivity;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/ck;->a:Lcom/aadhk/restpos/cj;

    iget-object v2, v2, Lcom/aadhk/restpos/cj;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 169
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    return-void
.end method
