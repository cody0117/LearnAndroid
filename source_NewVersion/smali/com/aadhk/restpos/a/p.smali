.class final Lcom/aadhk/restpos/a/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/a/m;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    iput-object p2, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iput p3, p0, Lcom/aadhk/restpos/a/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/d/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bv;->a()V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v1}, Lcom/aadhk/restpos/a/m;->b(Lcom/aadhk/restpos/a/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    iget v1, p0, Lcom/aadhk/restpos/a/p;->b:I

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;I)V

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/d/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bv;->a()V

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v1}, Lcom/aadhk/restpos/a/m;->b(Lcom/aadhk/restpos/a/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 244
    iget-object v0, p0, Lcom/aadhk/restpos/a/p;->c:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()V

    goto :goto_0
.end method
