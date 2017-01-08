.class final Lcom/aadhk/restpos/a/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/m;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    iput-object p2, p0, Lcom/aadhk/restpos/a/q;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iget-object v1, p0, Lcom/aadhk/restpos/a/q;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/d/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bv;->a()V

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v1}, Lcom/aadhk/restpos/a/m;->b(Lcom/aadhk/restpos/a/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 256
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()V

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/q;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(J)V

    .line 260
    :cond_0
    return-void
.end method
