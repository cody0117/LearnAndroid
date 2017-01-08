.class final Lcom/aadhk/restpos/df;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ServiceFeeActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/ServiceFeeActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lcom/aadhk/restpos/df;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/aadhk/restpos/df;->b:Ljava/util/List;

    .line 134
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/df;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/df;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/df;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ServiceFeeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    new-instance v1, Lcom/aadhk/restpos/dg;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/dg;-><init>(Lcom/aadhk/restpos/df;B)V

    .line 157
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/dg;->a:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0902ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/dg;->b:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/df;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 165
    iget-object v2, v1, Lcom/aadhk/restpos/dg;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v1, v1, Lcom/aadhk/restpos/dg;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

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

    .line 172
    :goto_1
    return-object p2

    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/dg;

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, v1, Lcom/aadhk/restpos/dg;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/df;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    iget v2, v2, Lcom/aadhk/restpos/ServiceFeeActivity;->j:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/df;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    iget-object v0, v0, Lcom/aadhk/restpos/ServiceFeeActivity;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
