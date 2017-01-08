.class final Lcom/aadhk/restpos/a/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Item;

.field final synthetic b:Lcom/aadhk/restpos/a/e;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    iput-object p2, p0, Lcom/aadhk/restpos/a/h;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->a:Lcom/aadhk/restpos/bean/Item;

    iget-object v1, p0, Lcom/aadhk/restpos/a/h;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setNum(I)V

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    invoke-static {v0}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/a/e;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    invoke-static {v1}, Lcom/aadhk/restpos/a/e;->c(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/e;->notifyDataSetChanged()V

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    invoke-static {v0}, Lcom/aadhk/restpos/a/e;->b(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    invoke-static {v1}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/a/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/a/h;->b:Lcom/aadhk/restpos/a/e;

    invoke-static {v0}, Lcom/aadhk/restpos/a/e;->b(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()V

    .line 180
    return-void
.end method
