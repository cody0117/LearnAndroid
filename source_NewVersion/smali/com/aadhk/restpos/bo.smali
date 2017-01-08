.class final Lcom/aadhk/restpos/bo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/a/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/bo;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/aadhk/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/bo;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PurchaseActivity;->a(Lcom/aadhk/restpos/PurchaseActivity;)Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    const-string v1, "com.aadhk.restpos.full"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "com.aadhk.restpos.report.sales"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "com.aadhk.restpos.feature.receipt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "com.aadhk.restpos.feature.kitchen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "com.aadhk.restpos.feature.kitchen2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "com.aadhk.restpos.feature.bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "com.aadhk.restpos.feature.price"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "com.aadhk.restpos.feature.payinout"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/bo;->a:Lcom/aadhk/restpos/PurchaseActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PurchaseActivity;->b(Lcom/aadhk/restpos/PurchaseActivity;)Lcom/aadhk/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/bo;->a:Lcom/aadhk/restpos/PurchaseActivity;

    iget-object v2, v2, Lcom/aadhk/restpos/PurchaseActivity;->a:Lcom/aadhk/a/j;

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/a/d;->a(Ljava/util/List;Lcom/aadhk/a/j;)V

    goto :goto_0
.end method
