.class public final Lcom/aadhk/restpos/a/am;
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
    .line 24
    invoke-direct {p0, p1}, Lcom/aadhk/product/a/a;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/aadhk/restpos/a/am;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    sub-int v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Table;->setSequence(I)V

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/aadhk/restpos/b/v;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/v;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/v;->b(Ljava/util/List;)V

    .line 92
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 93
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 40
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

    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/aadhk/restpos/a/an;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/a/an;-><init>(Lcom/aadhk/restpos/a/am;B)V

    .line 49
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/an;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0b0240

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/an;->b:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 57
    iget-object v2, v1, Lcom/aadhk/restpos/a/an;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget v0, p0, Lcom/aadhk/restpos/a/am;->d:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/aadhk/restpos/a/am;->d:I

    if-ne v0, p1, :cond_1

    .line 60
    iget-object v0, v1, Lcom/aadhk/restpos/a/an;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, v1, Lcom/aadhk/restpos/a/an;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->c:Landroid/content/res/Resources;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    :goto_1
    return-object p2

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/an;

    move-object v1, v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/an;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, v1, Lcom/aadhk/restpos/a/an;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/a/am;->c:Landroid/content/res/Resources;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
