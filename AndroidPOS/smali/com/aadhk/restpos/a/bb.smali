.class public final Lcom/aadhk/restpos/a/bb;
.super Lcom/aadhk/restpos/a/ag;
.source "ProGuard"


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;


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
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/aadhk/restpos/a/bb;->i:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/aadhk/restpos/a/bb;->h:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/a/bb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/a/bb;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 38
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

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/bb;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v1, Lcom/aadhk/restpos/a/bc;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/a/bc;-><init>(Lcom/aadhk/restpos/a/bb;B)V

    .line 47
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bc;->a:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f09002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bc;->b:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/bb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 55
    iget-object v2, v1, Lcom/aadhk/restpos/a/bc;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, v1, Lcom/aadhk/restpos/a/bc;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_1
    return-object p2

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/bc;

    move-object v1, v0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/bc;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
