.class final Lcom/aadhk/restpos/d/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/z;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/z;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 471
    check-cast p1, [Z

    .line 472
    const-string v0, ""

    .line 473
    aget-boolean v1, p1, v2

    if-eqz v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    .line 475
    iget-object v0, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->m(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    aget-boolean v1, p1, v3

    if-eqz v1, :cond_2

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->m(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax2Id(I)V

    .line 489
    :goto_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->n(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->m(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->k(Lcom/aadhk/restpos/d/z;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax2Id(I)V

    goto :goto_2
.end method
