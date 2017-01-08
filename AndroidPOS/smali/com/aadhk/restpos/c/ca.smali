.class final Lcom/aadhk/restpos/c/ca;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bw;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/bw;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/ca;-><init>(Lcom/aadhk/restpos/c/bw;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->h(Lcom/aadhk/restpos/c/bw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->h(Lcom/aadhk/restpos/c/bw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 222
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->i(Lcom/aadhk/restpos/c/bw;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    new-instance v1, Lcom/aadhk/restpos/c/cb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/cb;-><init>(Lcom/aadhk/restpos/c/ca;B)V

    .line 231
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/cb;->a:Landroid/widget/TextView;

    .line 232
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->h(Lcom/aadhk/restpos/c/bw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    .line 237
    if-nez p1, :cond_1

    .line 238
    iget-object v0, v2, Lcom/aadhk/restpos/c/cb;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bw;->i(Lcom/aadhk/restpos/c/bw;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v1

    const v2, 0x7f08037c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_1
    return-object p2

    .line 234
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/cb;

    move-object v2, v0

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/ca;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bw;->h(Lcom/aadhk/restpos/c/bw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, v2, Lcom/aadhk/restpos/c/cb;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

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

    .line 243
    :cond_2
    iget-object v1, v2, Lcom/aadhk/restpos/c/cb;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

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
