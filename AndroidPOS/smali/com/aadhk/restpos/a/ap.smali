.class public final Lcom/aadhk/restpos/a/ap;
.super Lcom/aadhk/product/a/a;
.source "ProGuard"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/aadhk/restpos/d/cr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/d/cr;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/d/cr;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/aadhk/product/a/a;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p3, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/aadhk/restpos/a/ap;->h:Lcom/aadhk/restpos/d/cr;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/a/ap;->f:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/ap;->g:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 92
    iget-object v1, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/aadhk/restpos/a/ap;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sub-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    sub-int v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Item;->setSequence(I)V

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->h:Lcom/aadhk/restpos/d/cr;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/d/cr;->a(Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/aadhk/restpos/a/aq;

    invoke-direct {v1, p0, v6}, Lcom/aadhk/restpos/a/aq;-><init>(Lcom/aadhk/restpos/a/ap;B)V

    .line 58
    const v0, 0x7f090171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/aq;->a:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0900f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/aq;->b:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0902b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/aq;->c:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/ap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 67
    iget-object v2, v1, Lcom/aadhk/restpos/a/aq;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v1, Lcom/aadhk/restpos/a/aq;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/ap;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget v0, p0, Lcom/aadhk/restpos/a/ap;->d:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/aadhk/restpos/a/ap;->d:I

    if-ne v0, p1, :cond_1

    .line 72
    iget-object v0, v1, Lcom/aadhk/restpos/a/aq;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, v1, Lcom/aadhk/restpos/a/aq;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->c:Landroid/content/res/Resources;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    :goto_1
    return-object p2

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/aq;

    move-object v1, v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/aq;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, v1, Lcom/aadhk/restpos/a/aq;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/a/ap;->c:Landroid/content/res/Resources;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
