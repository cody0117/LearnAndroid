.class final Lcom/aadhk/restpos/a/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ca;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/m;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/m;

    iput-object p2, p0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/aadhk/restpos/a/v;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/OrderItem;->setRemark(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/aadhk/restpos/a/v;->b:Lcom/aadhk/restpos/a/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/m;->notifyDataSetChanged()V

    .line 332
    return-void
.end method
