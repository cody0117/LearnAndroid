.class final Lcom/aadhk/restpos/d/ca;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 562
    check-cast p1, [Z

    .line 563
    const-string v0, ""

    .line 564
    aget-boolean v1, p1, v2

    if-eqz v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    .line 566
    iget-object v0, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->i(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v0

    .line 570
    :goto_0
    aget-boolean v1, p1, v3

    if-eqz v1, :cond_2

    .line 571
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->i(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/Item;->setTax2Id(I)V

    .line 580
    :goto_2
    aget-boolean v1, p1, v4

    if-eqz v1, :cond_4

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->i(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_3
    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax3Id(I)V

    .line 590
    :goto_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->j(Lcom/aadhk/restpos/d/bu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 591
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->i(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax2Id(I)V

    goto :goto_2

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->i(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 588
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/ca;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->g(Lcom/aadhk/restpos/d/bu;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Item;->setTax3Id(I)V

    goto :goto_4
.end method
