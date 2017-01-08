.class final Lcom/aadhk/restpos/a/ab;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/x;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/aadhk/restpos/a/ab;->a:Lcom/aadhk/restpos/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 371
    check-cast p1, Lcom/aadhk/restpos/bean/OrderItem;

    .line 372
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/a/ab;->a:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/en;->a()V

    .line 374
    iget-object v0, p0, Lcom/aadhk/restpos/a/ab;->a:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 375
    iget-object v0, p0, Lcom/aadhk/restpos/a/ab;->a:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {}, Lcom/aadhk/restpos/TakeOrderActivity;->g()V

    .line 379
    return-void
.end method
