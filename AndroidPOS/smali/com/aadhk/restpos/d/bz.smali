.class final Lcom/aadhk/restpos/d/bz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/d/bu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bu;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/aadhk/restpos/d/bz;->b:Lcom/aadhk/restpos/d/bu;

    iput-object p2, p0, Lcom/aadhk/restpos/d/bz;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 516
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/aadhk/restpos/d/bz;->b:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->f(Lcom/aadhk/restpos/d/bu;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bz;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/aadhk/restpos/d/bz;->b:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 522
    iget-object v1, p0, Lcom/aadhk/restpos/d/bz;->b:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/bz;->b:Lcom/aadhk/restpos/d/bu;

    invoke-static {v2}, Lcom/aadhk/restpos/d/bu;->h(Lcom/aadhk/restpos/d/bu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    goto :goto_0
.end method
