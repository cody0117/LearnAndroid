.class final Lcom/aadhk/restpos/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/t;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/t;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/u;->a:Lcom/aadhk/restpos/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/u;->a:Lcom/aadhk/restpos/t;

    iget-object v0, v0, Lcom/aadhk/restpos/t;->b:Lcom/aadhk/restpos/DiscountActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DiscountActivity;->a(Lcom/aadhk/restpos/DiscountActivity;)Lcom/aadhk/restpos/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/u;->a:Lcom/aadhk/restpos/t;

    iget-object v1, v1, Lcom/aadhk/restpos/t;->a:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/h;->a(I)V

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/u;->a:Lcom/aadhk/restpos/t;

    iget-object v0, v0, Lcom/aadhk/restpos/t;->b:Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/DiscountActivity;->a()V

    .line 86
    return-void
.end method
