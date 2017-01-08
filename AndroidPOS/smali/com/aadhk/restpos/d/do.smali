.class final Lcom/aadhk/restpos/d/do;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dm;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/aadhk/restpos/d/do;->a:Lcom/aadhk/restpos/d/dm;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/dm;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/do;-><init>(Lcom/aadhk/restpos/d/dm;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/do;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->d(Lcom/aadhk/restpos/d/dm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/do;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->d(Lcom/aadhk/restpos/d/dm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/do;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->e(Lcom/aadhk/restpos/d/dm;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 149
    new-instance v1, Lcom/aadhk/restpos/d/dp;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/dp;-><init>(Lcom/aadhk/restpos/d/do;B)V

    .line 150
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dp;->a:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 157
    iget-object v1, v1, Lcom/aadhk/restpos/d/dp;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-object p2

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/dp;

    move-object v1, v0

    goto :goto_0
.end method
