.class final Lcom/aadhk/restpos/c/cy;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/cx;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aadhk/restpos/c/cy;->a:Lcom/aadhk/restpos/c/cx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/cx;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/cy;-><init>(Lcom/aadhk/restpos/c/cx;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/cy;->a:Lcom/aadhk/restpos/c/cx;

    invoke-static {v0}, Lcom/aadhk/restpos/c/cx;->a(Lcom/aadhk/restpos/c/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/c/cy;->a:Lcom/aadhk/restpos/c/cx;

    invoke-static {v0}, Lcom/aadhk/restpos/c/cx;->a(Lcom/aadhk/restpos/c/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 88
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

    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/c/cy;->a:Lcom/aadhk/restpos/c/cx;

    invoke-static {v0}, Lcom/aadhk/restpos/c/cx;->b(Lcom/aadhk/restpos/c/cx;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v1, Lcom/aadhk/restpos/c/cz;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/c/cz;-><init>(Lcom/aadhk/restpos/c/cy;B)V

    .line 97
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/cz;->a:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f09002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/cz;->b:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/c/cy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    .line 104
    iget-object v2, v1, Lcom/aadhk/restpos/c/cz;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/aadhk/restpos/c/cy;->a:Lcom/aadhk/restpos/c/cx;

    invoke-static {v2}, Lcom/aadhk/restpos/c/cx;->c(Lcom/aadhk/restpos/c/cx;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, v1, Lcom/aadhk/restpos/c/cz;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_1
    return-object p2

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/cz;

    move-object v1, v0

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/c/cz;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
