.class final Lcom/aadhk/restpos/c/cl;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/ch;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/ch;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/aadhk/restpos/c/cl;->a:Lcom/aadhk/restpos/c/ch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/ch;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/cl;-><init>(Lcom/aadhk/restpos/c/ch;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/c/cl;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ch;->h(Lcom/aadhk/restpos/c/ch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/c/cl;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ch;->h(Lcom/aadhk/restpos/c/ch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/c/cl;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ch;->i(Lcom/aadhk/restpos/c/ch;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 201
    new-instance v1, Lcom/aadhk/restpos/c/cm;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/cm;-><init>(Lcom/aadhk/restpos/c/cl;B)V

    .line 202
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/cm;->a:Landroid/widget/TextView;

    .line 203
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/cl;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ch;->h(Lcom/aadhk/restpos/c/ch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 208
    if-nez p1, :cond_1

    .line 209
    iget-object v0, v1, Lcom/aadhk/restpos/c/cm;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cl;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ch;->j(Lcom/aadhk/restpos/c/ch;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_1
    return-object p2

    .line 205
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/cm;

    move-object v1, v0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    iget-object v1, v1, Lcom/aadhk/restpos/c/cm;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object v1, v1, Lcom/aadhk/restpos/c/cm;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
