.class final Lcom/aadhk/restpos/d/bz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/by;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/by;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/aadhk/restpos/d/bz;->a:Lcom/aadhk/restpos/d/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    check-cast p1, Lcom/aadhk/restpos/bean/CashRegister;

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/bz;->a:Lcom/aadhk/restpos/d/by;

    invoke-static {v0}, Lcom/aadhk/restpos/d/by;->a(Lcom/aadhk/restpos/d/by;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->c()Lcom/aadhk/restpos/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/a;->b(Lcom/aadhk/restpos/bean/CashRegister;)I

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/bz;->a:Lcom/aadhk/restpos/d/by;

    invoke-static {v0}, Lcom/aadhk/restpos/d/by;->a(Lcom/aadhk/restpos/d/by;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    .line 141
    return-void
.end method
