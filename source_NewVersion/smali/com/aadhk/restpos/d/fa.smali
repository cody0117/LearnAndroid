.class final Lcom/aadhk/restpos/d/fa;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/ez;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/ez;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/aadhk/restpos/d/fa;->h:Lcom/aadhk/restpos/d/ez;

    .line 132
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 133
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/fa;->h:Lcom/aadhk/restpos/d/ez;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ez;->a(Lcom/aadhk/restpos/d/ez;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/fa;->h:Lcom/aadhk/restpos/d/ez;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ez;->a(Lcom/aadhk/restpos/d/ez;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/fa;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 155
    new-instance v1, Lcom/aadhk/restpos/d/fb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/fb;-><init>(Lcom/aadhk/restpos/d/fa;B)V

    .line 156
    const v0, 0x7f0b0278

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fb;->a:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0b0279

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fb;->b:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0b020d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fb;->c:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/fa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 165
    iget-object v2, v1, Lcom/aadhk/restpos/d/fb;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, v1, Lcom/aadhk/restpos/d/fb;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCancelPerson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, v1, Lcom/aadhk/restpos/d/fb;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-object p2

    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/fb;

    move-object v1, v0

    goto :goto_0
.end method
