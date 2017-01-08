.class final Lcom/aadhk/restpos/bj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bi;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bi;

    iget-object v0, v0, Lcom/aadhk/restpos/bi;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a(Lcom/aadhk/restpos/PaymentMethodActivity;)Lcom/aadhk/restpos/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bi;

    iget-object v1, v1, Lcom/aadhk/restpos/bi;->a:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/p;->a(J)V

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/bj;->a:Lcom/aadhk/restpos/bi;

    iget-object v0, v0, Lcom/aadhk/restpos/bi;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a()V

    .line 86
    return-void
.end method
