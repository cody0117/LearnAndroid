.class final Lcom/aadhk/restpos/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/u;

.field final synthetic b:Lcom/aadhk/restpos/DiscountActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/c/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/aadhk/restpos/s;->b:Lcom/aadhk/restpos/DiscountActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    check-cast p1, Lcom/aadhk/restpos/bean/Discount;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/s;->b:Lcom/aadhk/restpos/DiscountActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DiscountActivity;->a(Lcom/aadhk/restpos/DiscountActivity;)Lcom/aadhk/restpos/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/h;->b(Lcom/aadhk/restpos/bean/Discount;)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/s;->b:Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/DiscountActivity;->a()V

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/c/u;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    .line 73
    return-void
.end method
