.class final Lcom/aadhk/restpos/a/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bb;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/aadhk/restpos/a/z;->b:Lcom/aadhk/restpos/a/q;

    iput-object p2, p0, Lcom/aadhk/restpos/a/z;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/aadhk/restpos/a/z;->a:Lcom/aadhk/restpos/bean/OrderItem;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/OrderItem;->setRemark(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/aadhk/restpos/a/z;->b:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 349
    return-void
.end method
