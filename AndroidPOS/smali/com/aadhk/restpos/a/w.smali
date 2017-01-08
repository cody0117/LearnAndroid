.class final Lcom/aadhk/restpos/a/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/v;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/v;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 282
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 304
    :cond_0
    :goto_1
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    goto :goto_0

    .line 290
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v1, v1, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v1, v1, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->d(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_5

    .line 295
    if-ne v0, v2, :cond_4

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v1, v1, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 297
    :cond_4
    if-ne v0, v3, :cond_0

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v1, v1, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1

    .line 300
    :cond_5
    if-ne v0, v2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v0, v0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/w;->a:Lcom/aadhk/restpos/a/v;

    iget-object v1, v1, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    goto :goto_1
.end method
