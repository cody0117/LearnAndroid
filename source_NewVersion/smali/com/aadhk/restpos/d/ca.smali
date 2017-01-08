.class final Lcom/aadhk/restpos/d/ca;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/CashRegister;

.field final synthetic b:Lcom/aadhk/restpos/d/by;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/by;Lcom/aadhk/restpos/bean/CashRegister;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/aadhk/restpos/d/ca;->b:Lcom/aadhk/restpos/d/by;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/ca;->b:Lcom/aadhk/restpos/d/by;

    invoke-static {v0}, Lcom/aadhk/restpos/d/by;->a(Lcom/aadhk/restpos/d/by;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->c()Lcom/aadhk/restpos/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/a;->a(J)I

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/ca;->b:Lcom/aadhk/restpos/d/by;

    invoke-static {v0}, Lcom/aadhk/restpos/d/by;->a(Lcom/aadhk/restpos/d/by;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    .line 148
    return-void
.end method
