.class final Lcom/aadhk/restpos/ee;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ed;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ed;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/aadhk/restpos/ee;->a:Lcom/aadhk/restpos/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 566
    check-cast p1, Lcom/aadhk/restpos/bean/Order;

    .line 567
    iget-object v0, p0, Lcom/aadhk/restpos/ee;->a:Lcom/aadhk/restpos/ed;

    iget-object v0, v0, Lcom/aadhk/restpos/ed;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/bean/Order;)V

    .line 568
    return-void
.end method
