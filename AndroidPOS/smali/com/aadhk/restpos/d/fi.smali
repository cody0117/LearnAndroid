.class final Lcom/aadhk/restpos/d/fi;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ey;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/aadhk/restpos/d/fi;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 539
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 540
    iget-object v2, p0, Lcom/aadhk/restpos/d/fi;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ey;->d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 541
    iget-object v0, p0, Lcom/aadhk/restpos/d/fi;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->e(Lcom/aadhk/restpos/d/ey;)V

    .line 542
    iget-object v0, p0, Lcom/aadhk/restpos/d/fi;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->f(Lcom/aadhk/restpos/d/ey;)V

    .line 543
    iget-object v0, p0, Lcom/aadhk/restpos/d/fi;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->e()V

    .line 544
    return-void
.end method
