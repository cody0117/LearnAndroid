.class final Lcom/aadhk/restpos/d/cq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Order;->setReceiptNote(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    .line 709
    return-void
.end method
