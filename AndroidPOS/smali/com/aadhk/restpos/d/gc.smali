.class final Lcom/aadhk/restpos/d/gc;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gb;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/gb;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/d/gb;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/gb;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/gc;-><init>(Lcom/aadhk/restpos/d/gb;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->d(Lcom/aadhk/restpos/d/gb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->d(Lcom/aadhk/restpos/d/gb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->g(Lcom/aadhk/restpos/d/gb;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 139
    new-instance v1, Lcom/aadhk/restpos/d/gd;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/gd;-><init>(Lcom/aadhk/restpos/d/gc;B)V

    .line 140
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/gd;->a:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0902c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/gd;->b:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f090180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/gd;->c:Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->h(Lcom/aadhk/restpos/d/gb;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 148
    iget-object v0, v1, Lcom/aadhk/restpos/d/gd;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f07007d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 152
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/gc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 153
    iget-object v2, v1, Lcom/aadhk/restpos/d/gd;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, v1, Lcom/aadhk/restpos/d/gd;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    :goto_2
    return-object p2

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/gd;

    move-object v1, v0

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/gd;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f07003b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, v1, Lcom/aadhk/restpos/d/gd;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
