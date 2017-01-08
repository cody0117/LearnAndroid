.class final Lcom/aadhk/restpos/a/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Item;

.field final synthetic b:Lcom/aadhk/restpos/a/m;

.field final synthetic c:Lcom/aadhk/restpos/a/h;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;Lcom/aadhk/restpos/a/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/aadhk/restpos/a/i;->c:Lcom/aadhk/restpos/a/h;

    iput-object p2, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    iput-object p3, p0, Lcom/aadhk/restpos/a/i;->b:Lcom/aadhk/restpos/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v1

    sub-int/2addr v0, v1

    .line 116
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->isStopSaleZeroQty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/a/i;->c:Lcom/aadhk/restpos/a/h;

    invoke-static {v0}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/i;->c:Lcom/aadhk/restpos/a/h;

    invoke-static {v1}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    const v2, 0x7f080298

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->isAskPrice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    new-instance v1, Lcom/aadhk/restpos/c/q;

    iget-object v2, p0, Lcom/aadhk/restpos/a/i;->c:Lcom/aadhk/restpos/a/h;

    invoke-static {v2}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/restpos/c/q;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Item;I)V

    .line 121
    new-instance v0, Lcom/aadhk/restpos/a/j;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/a/j;-><init>(Lcom/aadhk/restpos/a/i;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/q;->a(Lcom/aadhk/restpos/c/r;)V

    .line 129
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/q;->show()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/i;->c:Lcom/aadhk/restpos/a/h;

    iget-object v1, p0, Lcom/aadhk/restpos/a/i;->b:Lcom/aadhk/restpos/a/m;

    iget-object v2, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/Item;ID)V

    goto :goto_0
.end method
