.class final Lcom/aadhk/restpos/c/bh;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bf;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/bf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/bh;-><init>(Lcom/aadhk/restpos/c/bf;)V

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getModifiers()Ljava/util/List;

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
    .line 110
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
    .line 116
    if-nez p4, :cond_0

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->b(Lcom/aadhk/restpos/c/bf;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 118
    new-instance v1, Lcom/aadhk/restpos/c/bk;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/bk;-><init>(Lcom/aadhk/restpos/c/bh;B)V

    .line 119
    const v0, 0x7f09018a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bk;->e:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f090171

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bk;->c:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f09017b

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bk;->a:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0900f3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bk;->d:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 131
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getModifiers()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    .line 134
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v3}, Lcom/aadhk/restpos/c/bf;->c(Lcom/aadhk/restpos/c/bf;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v6}, Lcom/aadhk/restpos/c/bf;->d(Lcom/aadhk/restpos/c/bf;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    if-lez v2, :cond_1

    .line 138
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/aadhk/restpos/c/bi;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/c/bi;-><init>(Lcom/aadhk/restpos/c/bh;Lcom/aadhk/restpos/bean/Modifier;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/c/bj;

    invoke-direct {v3, p0, v0, v1}, Lcom/aadhk/restpos/c/bj;-><init>(Lcom/aadhk/restpos/c/bh;Lcom/aadhk/restpos/bean/Modifier;Lcom/aadhk/restpos/c/bk;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-object p4

    .line 127
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/bk;

    move-object v1, v0

    goto :goto_0

    .line 140
    :cond_1
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    if-lez v2, :cond_3

    .line 144
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    :cond_3
    iget-object v2, v1, Lcom/aadhk/restpos/c/bk;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 227
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    if-nez p3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->b(Lcom/aadhk/restpos/c/bf;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 235
    new-instance v1, Lcom/aadhk/restpos/c/bk;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/bk;-><init>(Lcom/aadhk/restpos/c/bh;B)V

    .line 236
    const v0, 0x7f090171

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bk;->b:Landroid/widget/TextView;

    .line 237
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 241
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/c/bk;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/bf;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-object p3

    .line 239
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/bk;

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method
