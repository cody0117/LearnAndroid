.class final Lcom/aadhk/restpos/c/bi;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Modifier;

.field final synthetic b:Lcom/aadhk/restpos/c/bh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bh;Lcom/aadhk/restpos/bean/Modifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/restpos/c/bh;

    iput-object p2, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    check-cast p1, Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/restpos/c/bh;

    iget-object v1, v1, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bf;->e(Lcom/aadhk/restpos/c/bf;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderModifier;->setItemid(J)V

    .line 166
    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierName(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/restpos/c/bh;

    iget-object v1, v1, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bf;->f(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 168
    if-ltz v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/restpos/c/bh;

    iget-object v0, v0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->f(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 170
    iget-object v2, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    if-nez v2, :cond_2

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/restpos/c/bh;

    iget-object v0, v0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->f(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    goto :goto_1
.end method
