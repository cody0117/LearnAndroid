.class public final Lcom/aadhk/restpos/c/cx;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Landroid/widget/GridView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Lcom/aadhk/restpos/MgrItemActivity;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/MgrItemActivity;Lcom/aadhk/restpos/bean/Item;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    const v0, 0x7f030065

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/c/cx;->i:Lcom/aadhk/restpos/MgrItemActivity;

    .line 34
    invoke-virtual {p1}, Lcom/aadhk/restpos/MgrItemActivity;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cx;->j:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/cx;->k:Ljava/util/List;

    .line 37
    if-eqz p2, :cond_2

    .line 38
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    move v1, v2

    .line 42
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 43
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 45
    iget-object v5, p0, Lcom/aadhk/restpos/c/cx;->k:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cx;->f:Landroid/widget/GridView;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->f:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/c/cy;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/cy;-><init>(Lcom/aadhk/restpos/c/cx;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cx;->g:Landroid/widget/Button;

    .line 57
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cx;->h:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/cx;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/cx;)Lcom/aadhk/restpos/MgrItemActivity;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->i:Lcom/aadhk/restpos/MgrItemActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/cx;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->k:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cx;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cx;->dismiss()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cx;->dismiss()V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/cx;->j:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    .line 65
    const v1, 0x7f09002c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/aadhk/restpos/c/cx;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/aadhk/restpos/c/cx;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
