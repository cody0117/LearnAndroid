.class final Lcom/aadhk/restpos/bh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bi;

.field final synthetic b:Lcom/aadhk/restpos/PaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/c/bi;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/aadhk/restpos/bh;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/bh;->a:Lcom/aadhk/restpos/c/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    check-cast p1, Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/bh;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a(Lcom/aadhk/restpos/PaymentMethodActivity;)Lcom/aadhk/restpos/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/p;->b(Lcom/aadhk/restpos/bean/PaymentMethod;)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/bh;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a()V

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/bh;->a:Lcom/aadhk/restpos/c/bi;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bi;->dismiss()V

    .line 73
    return-void
.end method
