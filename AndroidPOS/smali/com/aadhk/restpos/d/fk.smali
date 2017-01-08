.class final Lcom/aadhk/restpos/d/fk;
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
    .line 609
    iput-object p1, p0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 612
    iget-object v0, p0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->e(Lcom/aadhk/restpos/d/ey;)V

    .line 613
    iget-object v0, p0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->f(Lcom/aadhk/restpos/d/ey;)V

    .line 614
    iget-object v0, p0, Lcom/aadhk/restpos/d/fk;->a:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->e()V

    .line 615
    return-void
.end method
