.class public final Lcom/aadhk/restpos/a/bd;
.super Lcom/aadhk/restpos/a/ag;
.source "ProGuard"


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/aadhk/restpos/a/bd;->h:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/a/bd;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/a/bd;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/a/bd;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v1, Lcom/aadhk/restpos/a/be;

    invoke-direct {v1, p0, v7}, Lcom/aadhk/restpos/a/be;-><init>(Lcom/aadhk/restpos/a/bd;B)V

    .line 45
    const v0, 0x7f090171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/be;->a:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0900f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/be;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0902b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/be;->c:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/bd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 54
    iget-object v2, v1, Lcom/aadhk/restpos/a/be;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, v1, Lcom/aadhk/restpos/a/be;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/bd;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/bd;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isPicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, v1, Lcom/aadhk/restpos/a/be;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_1
    return-object p2

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/be;

    move-object v1, v0

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/be;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
