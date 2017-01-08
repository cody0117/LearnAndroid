.class final Lcom/aadhk/restpos/d/cj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ci;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasUnpaidBill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    iget-object v1, v1, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 1023
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->d()V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cj;->a:Lcom/aadhk/restpos/d/ci;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method
