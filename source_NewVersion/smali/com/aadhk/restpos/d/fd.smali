.class final Lcom/aadhk/restpos/d/fd;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/fc;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/fc;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/aadhk/restpos/d/fd;->h:Lcom/aadhk/restpos/d/fc;

    .line 148
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/fd;->h:Lcom/aadhk/restpos/d/fc;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fc;->a(Lcom/aadhk/restpos/d/fc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/fd;->h:Lcom/aadhk/restpos/d/fc;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fc;->a(Lcom/aadhk/restpos/d/fc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 163
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/fd;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    new-instance v1, Lcom/aadhk/restpos/d/fe;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/fe;-><init>(Lcom/aadhk/restpos/d/fd;B)V

    .line 172
    const v0, 0x7f0b026c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fe;->a:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0b027b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fe;->b:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0b027c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fe;->c:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0b0278

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fe;->d:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0b020d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fe;->e:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/fd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 183
    iget-object v2, v1, Lcom/aadhk/restpos/d/fe;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, v1, Lcom/aadhk/restpos/d/fe;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, v1, Lcom/aadhk/restpos/d/fe;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCancelPerson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, v1, Lcom/aadhk/restpos/d/fe;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v1, Lcom/aadhk/restpos/d/fe;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-object p2

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/fe;

    move-object v1, v0

    goto :goto_0
.end method
