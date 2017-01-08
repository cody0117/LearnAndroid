.class final Lcom/aadhk/restpos/d/ar;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/aq;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/aq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ar;-><init>(Lcom/aadhk/restpos/d/aq;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 157
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->e(Lcom/aadhk/restpos/d/aq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 165
    new-instance v1, Lcom/aadhk/restpos/d/as;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/d/as;-><init>(Lcom/aadhk/restpos/d/ar;B)V

    .line 166
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/as;->a:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0b012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/as;->b:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/ar;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 174
    iget-object v2, v1, Lcom/aadhk/restpos/d/as;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/aq;->b(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, v1, Lcom/aadhk/restpos/d/as;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :cond_0
    return-object p2

    .line 170
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/as;

    move-object v1, v0

    goto :goto_0
.end method
