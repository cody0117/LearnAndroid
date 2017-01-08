.class final Lcom/aadhk/restpos/a/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/a/ad;

.field final synthetic d:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;IILcom/aadhk/restpos/a/ad;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/aadhk/restpos/a/r;->d:Lcom/aadhk/restpos/a/q;

    iput p2, p0, Lcom/aadhk/restpos/a/r;->a:I

    iput p3, p0, Lcom/aadhk/restpos/a/r;->b:I

    iput-object p4, p0, Lcom/aadhk/restpos/a/r;->c:Lcom/aadhk/restpos/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/a/r;->d:Lcom/aadhk/restpos/a/q;

    iget v1, p0, Lcom/aadhk/restpos/a/r;->a:I

    iget v2, p0, Lcom/aadhk/restpos/a/r;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/a/q;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 107
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 108
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 109
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/aadhk/restpos/a/r;->c:Lcom/aadhk/restpos/a/ad;

    iget-object v1, v1, Lcom/aadhk/restpos/a/ad;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/r;->d:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/en;->a()V

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/a/r;->c:Lcom/aadhk/restpos/a/ad;

    iget-object v1, v1, Lcom/aadhk/restpos/a/ad;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/a/r;->d:Lcom/aadhk/restpos/a/q;

    iget v1, p0, Lcom/aadhk/restpos/a/r;->a:I

    iget v2, p0, Lcom/aadhk/restpos/a/r;->b:I

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;II)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/a/r;->d:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/a/r;->d:Lcom/aadhk/restpos/a/q;

    invoke-static {v0}, Lcom/aadhk/restpos/a/q;->a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/en;->a()V

    goto :goto_1
.end method
