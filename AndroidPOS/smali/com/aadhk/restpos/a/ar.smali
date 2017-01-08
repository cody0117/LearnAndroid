.class public final Lcom/aadhk/restpos/a/ar;
.super Lcom/aadhk/product/a/a;
.source "ProGuard"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/MgrTableActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/aadhk/product/a/a;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/a/ar;->f:Lcom/aadhk/restpos/MgrTableActivity;

    .line 26
    iput-object p2, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/aadhk/restpos/a/ar;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 87
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sub-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    sub-int v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Table;->setSequence(I)V

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->f:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/MgrTableActivity;->a(Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance v1, Lcom/aadhk/restpos/a/as;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/a/as;-><init>(Lcom/aadhk/restpos/a/ar;B)V

    .line 50
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/as;->a:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0902b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/as;->b:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/ar;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 58
    iget-object v2, v1, Lcom/aadhk/restpos/a/as;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget v0, p0, Lcom/aadhk/restpos/a/ar;->d:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/aadhk/restpos/a/ar;->d:I

    if-ne v0, p1, :cond_1

    .line 61
    iget-object v0, v1, Lcom/aadhk/restpos/a/as;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, v1, Lcom/aadhk/restpos/a/as;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->c:Landroid/content/res/Resources;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    :goto_1
    return-object p2

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/as;

    move-object v1, v0

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/as;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, v1, Lcom/aadhk/restpos/a/as;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/a/ar;->c:Landroid/content/res/Resources;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
