.class final Lcom/aadhk/restpos/d/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/q;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/q;->b(Lcom/aadhk/restpos/d/q;I)I

    .line 349
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->d(Lcom/aadhk/restpos/d/q;)I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->e(Lcom/aadhk/restpos/d/q;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->d(Lcom/aadhk/restpos/d/q;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->f(Lcom/aadhk/restpos/d/q;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->d(Lcom/aadhk/restpos/d/q;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->g(Lcom/aadhk/restpos/d/q;)V

    goto :goto_0
.end method
