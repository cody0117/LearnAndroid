.class final Lcom/aadhk/restpos/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->b(Lcom/aadhk/restpos/DatabaseActivity;I)I

    .line 388
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->c(Lcom/aadhk/restpos/DatabaseActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->d(Lcom/aadhk/restpos/DatabaseActivity;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->c(Lcom/aadhk/restpos/DatabaseActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->e(Lcom/aadhk/restpos/DatabaseActivity;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->c(Lcom/aadhk/restpos/DatabaseActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/aadhk/restpos/m;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->f(Lcom/aadhk/restpos/DatabaseActivity;)V

    goto :goto_0
.end method
