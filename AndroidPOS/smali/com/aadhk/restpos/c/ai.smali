.class final Lcom/aadhk/restpos/c/ai;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/ah;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/aadhk/restpos/c/ai;->a:Lcom/aadhk/restpos/c/ah;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/ah;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/ai;-><init>(Lcom/aadhk/restpos/c/ah;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->a:Lcom/aadhk/restpos/c/ah;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ah;->a(Lcom/aadhk/restpos/c/ah;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->a:Lcom/aadhk/restpos/c/ah;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ah;->a(Lcom/aadhk/restpos/c/ah;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->a:Lcom/aadhk/restpos/c/ah;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ah;->b(Lcom/aadhk/restpos/c/ah;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300de

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 122
    new-instance v1, Lcom/aadhk/restpos/c/aj;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/aj;-><init>(Lcom/aadhk/restpos/c/ai;B)V

    .line 123
    const v0, 0x7f090047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/aj;->a:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 129
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/c/aj;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->a:Lcom/aadhk/restpos/c/ah;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ah;->a(Lcom/aadhk/restpos/c/ah;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-object p2

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/aj;

    goto :goto_0
.end method
