.class final Lcom/aadhk/restpos/d/fl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/bean/SplitBill;

.field final synthetic c:Lcom/aadhk/restpos/d/fk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fk;ILcom/aadhk/restpos/bean/SplitBill;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iput p2, p0, Lcom/aadhk/restpos/d/fl;->a:I

    iput-object p3, p0, Lcom/aadhk/restpos/d/fl;->b:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/fl;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->a(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/b/u;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fl;->b:Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/SplitBill;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v3, v3, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v3}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v5, v5, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v5}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/u;->a(JJZ)V

    .line 397
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->b(Lcom/aadhk/restpos/d/ff;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->c(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ff;->a()V

    .line 402
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->i(Lcom/aadhk/restpos/d/ff;)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/aadhk/restpos/d/fl;->c:Lcom/aadhk/restpos/d/fk;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ff;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ff;->h(Lcom/aadhk/restpos/d/ff;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->a()V

    .line 405
    :cond_1
    return-void
.end method
