.class final Lcom/aadhk/restpos/a/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/a/z;

.field final synthetic d:Lcom/aadhk/restpos/a/m;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/m;IILcom/aadhk/restpos/a/z;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/aadhk/restpos/a/o;->d:Lcom/aadhk/restpos/a/m;

    iput p2, p0, Lcom/aadhk/restpos/a/o;->a:I

    iput p3, p0, Lcom/aadhk/restpos/a/o;->b:I

    iput-object p4, p0, Lcom/aadhk/restpos/a/o;->c:Lcom/aadhk/restpos/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/a/o;->d:Lcom/aadhk/restpos/a/m;

    iget v1, p0, Lcom/aadhk/restpos/a/o;->a:I

    iget v2, p0, Lcom/aadhk/restpos/a/o;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/a/m;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 137
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 138
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/aadhk/restpos/a/o;->c:Lcom/aadhk/restpos/a/z;

    iget-object v1, v1, Lcom/aadhk/restpos/a/z;->c:Landroid/widget/TextView;

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

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/o;->d:Lcom/aadhk/restpos/a/m;

    invoke-static {v0}, Lcom/aadhk/restpos/a/m;->a(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/d/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bv;->a()V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/a/o;->c:Lcom/aadhk/restpos/a/z;

    iget-object v1, v1, Lcom/aadhk/restpos/a/z;->c:Landroid/widget/TextView;

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
.end method
