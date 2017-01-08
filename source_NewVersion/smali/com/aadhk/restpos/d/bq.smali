.class final Lcom/aadhk/restpos/d/bq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bq;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bq;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/aadhk/restpos/b/n;->a(JJ)V

    .line 306
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bk;->e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v2}, Lcom/aadhk/restpos/d/bk;->i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/n;->b(J)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bk;->a(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)Ljava/util/List;

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->j(Lcom/aadhk/restpos/d/bk;)V

    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/d/bq;->b:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->h(Lcom/aadhk/restpos/d/bk;)V

    .line 309
    return-void
.end method
