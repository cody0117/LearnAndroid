.class final Lcom/aadhk/restpos/d/fp;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fn;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/fn;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    .line 179
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 180
    invoke-static {p1}, Lcom/aadhk/restpos/d/fn;->c(Lcom/aadhk/restpos/d/fn;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/LayoutInflater;

    .line 181
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 186
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    if-nez p4, :cond_0

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 199
    new-instance v1, Lcom/aadhk/restpos/d/fr;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/fr;-><init>(Lcom/aadhk/restpos/d/fp;B)V

    .line 200
    const v0, 0x7f0b012c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fr;->a:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0b00d3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fr;->b:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f0b0144

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fr;->c:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f0b0168

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fr;->d:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0b021c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fr;->e:Landroid/widget/ImageView;

    .line 205
    iget-object v0, v1, Lcom/aadhk/restpos/d/fr;->e:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->c(Lcom/aadhk/restpos/d/fn;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/d/fp;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 213
    iget-object v2, v1, Lcom/aadhk/restpos/d/fr;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v3}, Lcom/aadhk/restpos/d/fn;->d(Lcom/aadhk/restpos/d/fn;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v6}, Lcom/aadhk/restpos/d/fn;->e(Lcom/aadhk/restpos/d/fn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, v1, Lcom/aadhk/restpos/d/fr;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 216
    iget-object v4, v1, Lcom/aadhk/restpos/d/fr;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v5}, Lcom/aadhk/restpos/d/fn;->d(Lcom/aadhk/restpos/d/fn;)I

    move-result v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v6}, Lcom/aadhk/restpos/d/fn;->e(Lcom/aadhk/restpos/d/fn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v3, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 218
    iget-object v1, v1, Lcom/aadhk/restpos/d/fr;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_1
    return-object p4

    .line 209
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/fr;

    move-object v1, v0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, v1, Lcom/aadhk/restpos/d/fr;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 228
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 249
    if-nez p3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 251
    new-instance v1, Lcom/aadhk/restpos/d/fq;

    invoke-direct {v1, p0, v7}, Lcom/aadhk/restpos/d/fq;-><init>(Lcom/aadhk/restpos/d/fp;B)V

    .line 252
    const v0, 0x7f0b012c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0b00d3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0b0144

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0b0168

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0b021c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 262
    iget-object v2, v1, Lcom/aadhk/restpos/d/fq;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v3}, Lcom/aadhk/restpos/d/fn;->d(Lcom/aadhk/restpos/d/fn;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v6}, Lcom/aadhk/restpos/d/fn;->e(Lcom/aadhk/restpos/d/fn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, v1, Lcom/aadhk/restpos/d/fq;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 265
    iget-object v4, v1, Lcom/aadhk/restpos/d/fq;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v5}, Lcom/aadhk/restpos/d/fn;->d(Lcom/aadhk/restpos/d/fn;)I

    move-result v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/fp;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v6}, Lcom/aadhk/restpos/d/fn;->e(Lcom/aadhk/restpos/d/fn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v3, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, v1, Lcom/aadhk/restpos/d/fq;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, v1, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    :goto_1
    return-object p3

    .line 259
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/fq;

    move-object v1, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/fq;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method
