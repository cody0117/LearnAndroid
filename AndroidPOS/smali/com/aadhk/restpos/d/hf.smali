.class final Lcom/aadhk/restpos/d/hf;
.super Lcom/aadhk/restpos/a/ag;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/he;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/he;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/aadhk/restpos/d/hf;->h:Lcom/aadhk/restpos/d/he;

    .line 169
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;)V

    .line 170
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/hf;->h:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->g(Lcom/aadhk/restpos/d/he;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/hf;->h:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->g(Lcom/aadhk/restpos/d/he;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 196
    if-nez p2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/hf;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 198
    new-instance v1, Lcom/aadhk/restpos/d/hg;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/hg;-><init>(Lcom/aadhk/restpos/d/hf;B)V

    .line 199
    const v0, 0x7f0902de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/hg;->a:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f0902df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/hg;->b:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0902e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/hg;->c:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f0902ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/hg;->d:Landroid/widget/TextView;

    .line 203
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/hf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 209
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->isHasVoidItem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const v2, 0x7f070089

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 214
    :goto_1
    iget-object v2, v1, Lcom/aadhk/restpos/d/hg;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, v1, Lcom/aadhk/restpos/d/hg;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, v1, Lcom/aadhk/restpos/d/hg;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getEndTime()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/hf;->h:Lcom/aadhk/restpos/d/he;

    invoke-static {v4}, Lcom/aadhk/restpos/d/he;->h(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/hf;->h:Lcom/aadhk/restpos/d/he;

    invoke-static {v5}, Lcom/aadhk/restpos/d/he;->i(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, v1, Lcom/aadhk/restpos/d/hg;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/hf;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/hf;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-object p2

    .line 205
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/hg;

    move-object v1, v0

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
