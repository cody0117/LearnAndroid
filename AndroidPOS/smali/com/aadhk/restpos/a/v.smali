.class final Lcom/aadhk/restpos/a/v;
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
    .line 255
    iput-object p1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iput-object p2, p0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;[Ljava/lang/String;)[Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v2}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    const v3, 0x7f080137

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/TakeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->d(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v2}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 261
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->d(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v2}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;[Ljava/lang/String;)[Ljava/lang/String;

    .line 277
    :cond_2
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v1}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/q;

    invoke-static {v2}, Lcom/aadhk/restpos/a/q;->d(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->a()V

    .line 279
    new-instance v1, Lcom/aadhk/restpos/a/w;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/w;-><init>(Lcom/aadhk/restpos/a/v;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 307
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 308
    return-void
.end method
