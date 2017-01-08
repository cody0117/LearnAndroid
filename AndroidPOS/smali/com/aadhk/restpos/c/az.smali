.class final Lcom/aadhk/restpos/c/az;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/ay;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/c/ay;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/aadhk/restpos/c/az;->a:Lcom/aadhk/restpos/c/ay;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 109
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->b:Landroid/view/LayoutInflater;

    .line 110
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->a:Lcom/aadhk/restpos/c/ay;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ay;->a(Lcom/aadhk/restpos/c/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->a:Lcom/aadhk/restpos/c/ay;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ay;->a(Lcom/aadhk/restpos/c/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 132
    new-instance v1, Lcom/aadhk/restpos/c/ba;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/ba;-><init>(Lcom/aadhk/restpos/c/az;B)V

    .line 133
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/ba;->a:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 139
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/c/ba;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->a:Lcom/aadhk/restpos/c/ay;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ay;->a(Lcom/aadhk/restpos/c/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-object p2

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/ba;

    goto :goto_0
.end method
