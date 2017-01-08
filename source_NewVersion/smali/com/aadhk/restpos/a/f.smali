.class final Lcom/aadhk/restpos/a/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Item;

.field final synthetic b:Lcom/aadhk/restpos/a/i;

.field final synthetic c:Lcom/aadhk/restpos/a/e;

.field private d:Lcom/aadhk/restpos/bean/OrderItem;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;Lcom/aadhk/restpos/a/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    iput-object p2, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    iput-object p3, p0, Lcom/aadhk/restpos/a/f;->b:Lcom/aadhk/restpos/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)Lcom/aadhk/restpos/bean/OrderItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/f;->d:Lcom/aadhk/restpos/bean/OrderItem;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setNum(I)V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->b:Lcom/aadhk/restpos/a/i;

    iget-object v0, v0, Lcom/aadhk/restpos/a/i;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Item;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    invoke-static {v0}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/a/e;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->d:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    invoke-static {v0}, Lcom/aadhk/restpos/a/e;->b(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    invoke-static {v1}, Lcom/aadhk/restpos/a/e;->a(Lcom/aadhk/restpos/a/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    invoke-static {v0}, Lcom/aadhk/restpos/a/e;->b(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    if-gtz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 136
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    invoke-static {v1}, Lcom/aadhk/restpos/a/e;->b(Lcom/aadhk/restpos/a/e;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->c:Lcom/aadhk/restpos/a/e;

    iget-object v1, v1, Lcom/aadhk/restpos/a/e;->c:Landroid/content/res/Resources;

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 141
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    iget-object v1, p0, Lcom/aadhk/restpos/a/f;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    goto :goto_0
.end method
