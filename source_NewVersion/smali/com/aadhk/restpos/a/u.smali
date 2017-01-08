.class final Lcom/aadhk/restpos/a/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/t;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 301
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v0, v0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v0, v0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v0, v0, Lcom/aadhk/restpos/a/t;->b:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v0, v0, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    goto :goto_0

    .line 309
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 310
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v0, v0, Lcom/aadhk/restpos/a/t;->b:Lcom/aadhk/restpos/a/m;

    iget-object v1, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v1, v1, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 311
    :cond_3
    if-ne v0, v2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v0, v0, Lcom/aadhk/restpos/a/t;->b:Lcom/aadhk/restpos/a/m;

    iget-object v1, p0, Lcom/aadhk/restpos/a/u;->a:Lcom/aadhk/restpos/a/t;

    iget-object v1, v1, Lcom/aadhk/restpos/a/t;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/m;->b(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1
.end method
