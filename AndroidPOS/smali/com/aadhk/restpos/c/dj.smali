.class final Lcom/aadhk/restpos/c/dj;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/di;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/di;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/aadhk/restpos/c/dj;->a:Lcom/aadhk/restpos/c/di;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/di;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/dj;-><init>(Lcom/aadhk/restpos/c/di;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/dj;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->a(Lcom/aadhk/restpos/c/di;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/c/dj;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->a(Lcom/aadhk/restpos/c/di;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/dj;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->b(Lcom/aadhk/restpos/c/di;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Lcom/aadhk/restpos/c/dk;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/dk;-><init>(Lcom/aadhk/restpos/c/dj;B)V

    .line 83
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/dk;->a:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 88
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/c/dk;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/dj;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->a(Lcom/aadhk/restpos/c/di;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-object p2

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/dk;

    goto :goto_0
.end method
