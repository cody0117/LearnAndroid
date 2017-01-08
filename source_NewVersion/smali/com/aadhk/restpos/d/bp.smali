.class final Lcom/aadhk/restpos/d/bp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/aa;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/c/y;

.field final synthetic c:Lcom/aadhk/restpos/d/bk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/c/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/aadhk/restpos/d/bp;->c:Lcom/aadhk/restpos/d/bk;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/bean/OrderItem;

    iput-object p3, p0, Lcom/aadhk/restpos/d/bp;->b:Lcom/aadhk/restpos/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 290
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/n;->b(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->g(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/j;->notifyDataSetChanged()V

    .line 292
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->c:Lcom/aadhk/restpos/d/bk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bk;->h(Lcom/aadhk/restpos/d/bk;)V

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->b:Lcom/aadhk/restpos/c/y;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/y;->dismiss()V

    .line 294
    return-void
.end method
