.class final Lcom/aadhk/restpos/d/dw;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/dv;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/dv;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/aadhk/restpos/d/dw;->h:Lcom/aadhk/restpos/d/dv;

    .line 163
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 164
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->h:Lcom/aadhk/restpos/d/dv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dv;->a(Lcom/aadhk/restpos/d/dv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->h:Lcom/aadhk/restpos/d/dv;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dv;->a(Lcom/aadhk/restpos/d/dv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 187
    if-nez p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 189
    new-instance v1, Lcom/aadhk/restpos/d/dx;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/dx;-><init>(Lcom/aadhk/restpos/d/dw;B)V

    .line 190
    const v0, 0x7f0b026c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dx;->a:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0b026d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dx;->b:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0b026e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dx;->c:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0b0237

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dx;->d:Landroid/widget/TextView;

    .line 194
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/dw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 200
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasVoidItem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const v2, 0x7f080072

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    :goto_1
    iget-object v2, v1, Lcom/aadhk/restpos/d/dx;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, v1, Lcom/aadhk/restpos/d/dx;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, v1, Lcom/aadhk/restpos/d/dx;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getEndTime()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/dw;->h:Lcom/aadhk/restpos/d/dv;

    invoke-static {v4}, Lcom/aadhk/restpos/d/dv;->b(Lcom/aadhk/restpos/d/dv;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, v1, Lcom/aadhk/restpos/d/dx;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/dw;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/dw;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-object p2

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/dx;

    move-object v1, v0

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
