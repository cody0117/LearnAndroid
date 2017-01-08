.class final Lcom/aadhk/restpos/d/bf;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bd;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/aadhk/restpos/d/bf;->a:Lcom/aadhk/restpos/d/bd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/bd;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/bf;-><init>(Lcom/aadhk/restpos/d/bd;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/bf;->a:Lcom/aadhk/restpos/d/bd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bd;->a(Lcom/aadhk/restpos/d/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/bf;->a:Lcom/aadhk/restpos/d/bd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bd;->a(Lcom/aadhk/restpos/d/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/bf;->a:Lcom/aadhk/restpos/d/bd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bd;->c(Lcom/aadhk/restpos/d/bd;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v1, Lcom/aadhk/restpos/d/bg;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/bg;-><init>(Lcom/aadhk/restpos/d/bf;B)V

    .line 108
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/bg;->a:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/bf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 115
    iget-object v1, v1, Lcom/aadhk/restpos/d/bg;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-object p2

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/bg;

    move-object v1, v0

    goto :goto_0
.end method
