.class final Lcom/aadhk/restpos/a/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/r;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/r;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 271
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 274
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->b:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 286
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->a:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    goto :goto_0

    .line 279
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->b:Lcom/aadhk/restpos/a/m;

    iget-object v1, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v1, v1, Lcom/aadhk/restpos/a/r;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 281
    :cond_3
    if-ne v0, v2, :cond_4

    .line 282
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->b:Lcom/aadhk/restpos/a/m;

    iget-object v1, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v1, v1, Lcom/aadhk/restpos/a/r;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/m;->b(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 283
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v0, v0, Lcom/aadhk/restpos/a/r;->b:Lcom/aadhk/restpos/a/m;

    iget-object v1, p0, Lcom/aadhk/restpos/a/s;->a:Lcom/aadhk/restpos/a/r;

    iget-object v1, v1, Lcom/aadhk/restpos/a/r;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1
.end method
