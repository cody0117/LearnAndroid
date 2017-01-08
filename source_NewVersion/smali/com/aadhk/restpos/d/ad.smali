.class final Lcom/aadhk/restpos/d/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/d/z;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/z;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/aadhk/restpos/d/ad;->b:Lcom/aadhk/restpos/d/z;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ad;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 425
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->b:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->j(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ad;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/aadhk/restpos/d/ad;->b:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 431
    iget-object v1, p0, Lcom/aadhk/restpos/d/ad;->b:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ad;->b:Lcom/aadhk/restpos/d/z;

    invoke-static {v2}, Lcom/aadhk/restpos/d/z;->l(Lcom/aadhk/restpos/d/z;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    goto :goto_0
.end method
