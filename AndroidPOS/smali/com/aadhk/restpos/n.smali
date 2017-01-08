.class final Lcom/aadhk/restpos/n;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DiscountActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/DiscountActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/aadhk/restpos/n;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/aadhk/restpos/n;->b:Ljava/util/List;

    .line 136
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/n;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 150
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/n;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/DiscountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 158
    new-instance v1, Lcom/aadhk/restpos/o;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/o;-><init>(Lcom/aadhk/restpos/n;B)V

    .line 159
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/o;->a:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0902ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/o;->b:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    .line 167
    iget-object v2, v1, Lcom/aadhk/restpos/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v1, v1, Lcom/aadhk/restpos/o;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/aadhk/restpos/util/p;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    return-object p2

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/o;

    move-object v1, v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, v1, Lcom/aadhk/restpos/o;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/n;->a:Lcom/aadhk/restpos/DiscountActivity;

    iget v2, v2, Lcom/aadhk/restpos/DiscountActivity;->j:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/n;->a:Lcom/aadhk/restpos/DiscountActivity;

    iget-object v0, v0, Lcom/aadhk/restpos/DiscountActivity;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
