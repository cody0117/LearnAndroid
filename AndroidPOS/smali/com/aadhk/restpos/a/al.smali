.class public final Lcom/aadhk/restpos/a/al;
.super Lcom/aadhk/product/a/a;
.source "ProGuard"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/aadhk/restpos/MgrCategoryActivity;

.field private g:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/MgrCategoryActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/aadhk/product/a/a;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Lcom/aadhk/restpos/a/am;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/a/am;-><init>(Lcom/aadhk/restpos/a/al;)V

    iput-object v0, p0, Lcom/aadhk/restpos/a/al;->g:Landroid/view/View$OnLongClickListener;

    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/a/al;->f:Lcom/aadhk/restpos/MgrCategoryActivity;

    .line 46
    iput-object p2, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 277
    iget-object v1, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 279
    invoke-virtual {p0}, Lcom/aadhk/restpos/a/al;->notifyDataSetChanged()V

    .line 280
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 283
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 284
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sub-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    sub-int v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Category;->setSequence(I)V

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->f:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Ljava/util/Map;)V

    .line 290
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const v4, 0x7f0902b4

    const/4 v3, 0x0

    .line 67
    if-nez p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->f:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v1, Lcom/aadhk/restpos/a/ao;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/a/ao;-><init>(Lcom/aadhk/restpos/a/al;B)V

    .line 70
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ao;->a:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ao;->b:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/al;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 78
    iget-object v2, v1, Lcom/aadhk/restpos/a/ao;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget v0, p0, Lcom/aadhk/restpos/a/al;->d:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/aadhk/restpos/a/al;->d:I

    if-ne v0, p1, :cond_1

    .line 81
    iget-object v0, v1, Lcom/aadhk/restpos/a/ao;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->c:Landroid/content/res/Resources;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    :goto_1
    return-object p2

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/ao;

    move-object v1, v0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/ao;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/a/al;->c:Landroid/content/res/Resources;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
