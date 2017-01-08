.class final Lcom/aadhk/restpos/c/ar;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Modifier;

.field final synthetic b:Lcom/aadhk/restpos/c/aq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/aq;Lcom/aadhk/restpos/bean/Modifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/aadhk/restpos/c/ar;->b:Lcom/aadhk/restpos/c/aq;

    iput-object p2, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    check-cast p1, Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierId(J)V

    .line 158
    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->b:Lcom/aadhk/restpos/c/aq;

    iget-object v1, v1, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ap;->e(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 159
    if-ltz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->b:Lcom/aadhk/restpos/c/aq;

    iget-object v0, v0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->e(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 161
    iget-object v2, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->b:Lcom/aadhk/restpos/c/aq;

    iget-object v0, v0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->e(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_0
    :goto_1
    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    goto :goto_1
.end method
