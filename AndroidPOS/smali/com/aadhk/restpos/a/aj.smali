.class public final Lcom/aadhk/restpos/a/aj;
.super Lcom/aadhk/restpos/a/ag;
.source "ProGuard"


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
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
            "Lcom/aadhk/restpos/bean/Table;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/aadhk/restpos/a/aj;->h:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/a/aj;->h:Ljava/util/List;

    .line 25
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/a/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/a/aj;->h:Ljava/util/List;

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
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/aj;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v1, Lcom/aadhk/restpos/a/ak;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/a/ak;-><init>(Lcom/aadhk/restpos/a/aj;B)V

    .line 47
    const v0, 0x7f090171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ak;->a:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f090190

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/aj;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 55
    iget-object v2, v1, Lcom/aadhk/restpos/a/ak;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->isReceipt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->a:Landroid/widget/TextView;

    const v2, 0x7f0200cf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    const v1, 0x7f080323

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :goto_1
    return-object p2

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/ak;

    move-object v1, v0

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->isItemWait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->a:Landroid/widget/TextView;

    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->a:Landroid/widget/TextView;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->a:Landroid/widget/TextView;

    const v2, 0x7f020101

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, v1, Lcom/aadhk/restpos/a/ak;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
