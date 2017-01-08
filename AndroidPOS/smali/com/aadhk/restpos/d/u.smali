.class final Lcom/aadhk/restpos/d/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/d;

.field final synthetic b:Lcom/aadhk/restpos/d/s;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/s;Lcom/aadhk/restpos/c/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/aadhk/restpos/d/u;->b:Lcom/aadhk/restpos/d/s;

    iput-object p2, p0, Lcom/aadhk/restpos/d/u;->a:Lcom/aadhk/restpos/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/aadhk/restpos/d/u;->b:Lcom/aadhk/restpos/d/s;

    iget-object v0, v0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->d(Lcom/aadhk/restpos/d/q;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/aadhk/restpos/d/u;->b:Lcom/aadhk/restpos/d/s;

    iget-object v0, v0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->j(Lcom/aadhk/restpos/d/q;)V

    .line 612
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/u;->a:Lcom/aadhk/restpos/c/d;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->dismiss()V

    .line 613
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/u;->b:Lcom/aadhk/restpos/d/s;

    iget-object v0, v0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->d(Lcom/aadhk/restpos/d/q;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/aadhk/restpos/d/u;->b:Lcom/aadhk/restpos/d/s;

    iget-object v0, v0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->k(Lcom/aadhk/restpos/d/q;)V

    goto :goto_0
.end method
