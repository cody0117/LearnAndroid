.class final Lcom/aadhk/restpos/d/jz;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jx;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/jx;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    .line 233
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 234
    invoke-static {p1}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jz;->b:Landroid/view/LayoutInflater;

    .line 235
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 240
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
    .line 245
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
    .line 251
    if-nez p4, :cond_0

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 253
    new-instance v1, Lcom/aadhk/restpos/d/kb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/kb;-><init>(Lcom/aadhk/restpos/d/jz;B)V

    .line 254
    const v0, 0x7f090171

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/kb;->a:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0900f3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/kb;->b:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f09018a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/kb;->c:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0901b7

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/kb;->d:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f090283

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/kb;->e:Landroid/widget/ImageView;

    .line 259
    iget-object v0, v1, Lcom/aadhk/restpos/d/kb;->e:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SplitBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 266
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/d/jz;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 267
    iget-object v2, v1, Lcom/aadhk/restpos/d/kb;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v3}, Lcom/aadhk/restpos/d/jx;->l(Lcom/aadhk/restpos/d/jx;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v6}, Lcom/aadhk/restpos/d/jx;->m(Lcom/aadhk/restpos/d/jx;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, v1, Lcom/aadhk/restpos/d/kb;->c:Landroid/widget/TextView;

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

    .line 269
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 270
    iget-object v4, v1, Lcom/aadhk/restpos/d/kb;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v5}, Lcom/aadhk/restpos/d/jx;->l(Lcom/aadhk/restpos/d/jx;)I

    move-result v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v6}, Lcom/aadhk/restpos/d/jx;->m(Lcom/aadhk/restpos/d/jx;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v3, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 272
    iget-object v1, v1, Lcom/aadhk/restpos/d/kb;->a:Landroid/widget/TextView;

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

    .line 276
    :goto_1
    return-object p4

    .line 263
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/kb;

    move-object v1, v0

    goto :goto_0

    .line 274
    :cond_1
    iget-object v1, v1, Lcom/aadhk/restpos/d/kb;->a:Landroid/widget/TextView;

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
    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 282
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
    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 297
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

    .line 303
    if-nez p3, :cond_0

    .line 304
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 305
    new-instance v1, Lcom/aadhk/restpos/d/ka;

    invoke-direct {v1, p0, v7}, Lcom/aadhk/restpos/d/ka;-><init>(Lcom/aadhk/restpos/d/jz;B)V

    .line 306
    const v0, 0x7f090171

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ka;->a:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0900f3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ka;->b:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f09018a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ka;->c:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0901b7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ka;->d:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f090283

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ka;->e:Landroid/widget/ImageView;

    .line 311
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 316
    iget-object v2, v1, Lcom/aadhk/restpos/d/ka;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v3}, Lcom/aadhk/restpos/d/jx;->l(Lcom/aadhk/restpos/d/jx;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v6}, Lcom/aadhk/restpos/d/jx;->m(Lcom/aadhk/restpos/d/jx;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, v1, Lcom/aadhk/restpos/d/ka;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 319
    iget-object v4, v1, Lcom/aadhk/restpos/d/ka;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v5}, Lcom/aadhk/restpos/d/jx;->l(Lcom/aadhk/restpos/d/jx;)I

    move-result v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/jz;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v6}, Lcom/aadhk/restpos/d/jx;->m(Lcom/aadhk/restpos/d/jx;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v3, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, v1, Lcom/aadhk/restpos/d/ka;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, v1, Lcom/aadhk/restpos/d/ka;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    :goto_1
    return-object p3

    .line 313
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/ka;

    move-object v1, v0

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/ka;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method
