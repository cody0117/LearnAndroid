.class final Lcom/aadhk/restpos/c/as;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Modifier;

.field final synthetic b:Lcom/aadhk/restpos/c/at;

.field final synthetic c:Lcom/aadhk/restpos/c/aq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/aq;Lcom/aadhk/restpos/bean/Modifier;Lcom/aadhk/restpos/c/at;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/aadhk/restpos/c/as;->c:Lcom/aadhk/restpos/c/aq;

    iput-object p2, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    iput-object p3, p0, Lcom/aadhk/restpos/c/as;->b:Lcom/aadhk/restpos/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/c/as;->b:Lcom/aadhk/restpos/c/at;

    iget-object v0, v0, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierId(J)V

    .line 183
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->c:Lcom/aadhk/restpos/c/aq;

    iget-object v1, v1, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ap;->e(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 184
    if-ltz v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/c/as;->c:Lcom/aadhk/restpos/c/aq;

    iget-object v0, v0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->e(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 186
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 194
    :goto_1
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/as;->b:Lcom/aadhk/restpos/c/at;

    iget-object v0, v0, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 189
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierPrice(D)V

    .line 190
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierName(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setType(I)V

    .line 192
    iget-object v1, p0, Lcom/aadhk/restpos/c/as;->c:Lcom/aadhk/restpos/c/aq;

    iget-object v1, v1, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ap;->e(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method