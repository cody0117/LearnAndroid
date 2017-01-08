.class final Lcom/aadhk/restpos/a/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/aadhk/restpos/a/u;->b:Lcom/aadhk/restpos/a/q;

    iput-object p2, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/en;->a()V

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->b:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 252
    return-void
.end method
