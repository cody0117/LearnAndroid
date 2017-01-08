.class final Lcom/aadhk/restpos/a/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/x;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/m;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    iput-object p2, p0, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 355
    check-cast p1, Lcom/aadhk/restpos/bean/OrderItem;

    .line 356
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/d/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bv;->a()V

    .line 358
    iget-object v0, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v1}, Lcom/aadhk/restpos/a/m;->b(Lcom/aadhk/restpos/a/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()V

    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/a/x;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/a/x;->b:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(J)V

    .line 364
    :cond_0
    return-void
.end method
