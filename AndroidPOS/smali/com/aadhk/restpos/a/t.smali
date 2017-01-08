.class final Lcom/aadhk/restpos/a/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    iput-object p2, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iput p3, p0, Lcom/aadhk/restpos/a/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/en;->a()V

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    iget v1, p0, Lcom/aadhk/restpos/a/t;->b:I

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;I)V

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/en;->a()V

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/a/t;->c:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_0
.end method
