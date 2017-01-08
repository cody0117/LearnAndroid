.class final Lcom/aadhk/restpos/a/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/x;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 319
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v0, v0, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 322
    iget-object v0, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v0, v0, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v0, v0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v0, v0, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    goto :goto_0

    .line 327
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v0, v0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v1, v1, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 329
    :cond_3
    if-ne v0, v2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v0, v0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/y;->a:Lcom/aadhk/restpos/a/x;

    iget-object v1, v1, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1
.end method
