.class final Lcom/aadhk/restpos/a/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Item;

.field final synthetic b:Lcom/aadhk/restpos/a/h;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/aadhk/restpos/a/l;->b:Lcom/aadhk/restpos/a/h;

    iput-object p2, p0, Lcom/aadhk/restpos/a/l;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/a/l;->a:Lcom/aadhk/restpos/bean/Item;

    iget-object v1, p0, Lcom/aadhk/restpos/a/l;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getOrderQty()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setOrderQty(I)V

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/a/l;->b:Lcom/aadhk/restpos/a/h;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/h;->notifyDataSetChanged()V

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/a/l;->b:Lcom/aadhk/restpos/a/h;

    invoke-static {v0}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/l;->b:Lcom/aadhk/restpos/a/h;

    invoke-static {v1}, Lcom/aadhk/restpos/a/h;->b(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/a/l;->b:Lcom/aadhk/restpos/a/h;

    invoke-static {v0}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->f()V

    .line 211
    return-void
.end method
