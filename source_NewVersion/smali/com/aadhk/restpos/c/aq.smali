.class final Lcom/aadhk/restpos/c/aq;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/ap;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/ap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/aq;-><init>(Lcom/aadhk/restpos/c/ap;)V

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

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
    .line 101
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
    .line 107
    if-nez p4, :cond_0

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->b(Lcom/aadhk/restpos/c/ap;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 109
    new-instance v1, Lcom/aadhk/restpos/c/at;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/at;-><init>(Lcom/aadhk/restpos/c/aq;B)V

    .line 110
    const v0, 0x7f0b0144

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0b012c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/at;->c:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0b0136

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/c/at;->a:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0b00d3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/at;->d:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 122
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getModifiers()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    .line 125
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v3}, Lcom/aadhk/restpos/c/ap;->c(Lcom/aadhk/restpos/c/ap;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v6}, Lcom/aadhk/restpos/c/ap;->d(Lcom/aadhk/restpos/c/ap;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 128
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

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

    .line 141
    :goto_1
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/aadhk/restpos/c/ar;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/c/ar;-><init>(Lcom/aadhk/restpos/c/aq;Lcom/aadhk/restpos/bean/Modifier;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/c/as;

    invoke-direct {v3, p0, v0, v1}, Lcom/aadhk/restpos/c/as;-><init>(Lcom/aadhk/restpos/c/aq;Lcom/aadhk/restpos/bean/Modifier;Lcom/aadhk/restpos/c/at;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-object p4

    .line 118
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/at;

    move-object v1, v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

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

    .line 134
    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v2

    if-lez v2, :cond_3

    .line 135
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

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

    .line 137
    :cond_3
    iget-object v2, v1, Lcom/aadhk/restpos/c/at;->e:Landroid/widget/TextView;

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
    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

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
    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 216
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
    .line 222
    if-nez p3, :cond_0

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->b(Lcom/aadhk/restpos/c/ap;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 224
    new-instance v1, Lcom/aadhk/restpos/c/at;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/at;-><init>(Lcom/aadhk/restpos/c/aq;B)V

    .line 225
    const v0, 0x7f0b012c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/at;->b:Landroid/widget/TextView;

    .line 226
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 230
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/c/at;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/aq;->a:Lcom/aadhk/restpos/c/ap;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/restpos/c/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-object p3

    .line 228
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/at;

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method
