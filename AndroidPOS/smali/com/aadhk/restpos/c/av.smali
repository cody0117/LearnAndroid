.class final Lcom/aadhk/restpos/c/av;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/at;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/at;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/at;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/av;-><init>(Lcom/aadhk/restpos/c/at;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-static {v0}, Lcom/aadhk/restpos/c/at;->a(Lcom/aadhk/restpos/c/at;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-static {v0}, Lcom/aadhk/restpos/c/at;->a(Lcom/aadhk/restpos/c/at;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 171
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-static {v0}, Lcom/aadhk/restpos/c/at;->b(Lcom/aadhk/restpos/c/at;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300de

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 179
    new-instance v1, Lcom/aadhk/restpos/c/aw;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/aw;-><init>(Lcom/aadhk/restpos/c/av;B)V

    .line 180
    const v0, 0x7f090047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/aw;->a:Landroid/widget/TextView;

    .line 181
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-static {v0}, Lcom/aadhk/restpos/c/at;->a(Lcom/aadhk/restpos/c/at;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 186
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 187
    iget-object v1, v1, Lcom/aadhk/restpos/c/aw;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    return-object p2

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/aw;

    move-object v1, v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v1, v1, Lcom/aadhk/restpos/c/aw;->a:Landroid/widget/TextView;

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

    .line 191
    :cond_2
    iget-object v1, v1, Lcom/aadhk/restpos/c/aw;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-static {v3}, Lcom/aadhk/restpos/c/at;->c(Lcom/aadhk/restpos/c/at;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/c/av;->a:Lcom/aadhk/restpos/c/at;

    invoke-static {v0}, Lcom/aadhk/restpos/c/at;->c(Lcom/aadhk/restpos/c/at;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
