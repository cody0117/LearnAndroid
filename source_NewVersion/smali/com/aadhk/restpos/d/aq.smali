.class public final Lcom/aadhk/restpos/d/aq;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/MgrItemActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ListView;

.field private h:Lcom/aadhk/restpos/b/k;

.field private i:Landroid/view/LayoutInflater;

.field private j:Lcom/aadhk/restpos/d/ar;

.field private k:Lcom/aadhk/restpos/bean/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/bean/Item;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/MgrItemActivity;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/aq;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->i:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/aadhk/restpos/b/k;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/aq;->h:Lcom/aadhk/restpos/b/k;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->h:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->f:Ljava/util/List;

    new-instance v0, Lcom/aadhk/restpos/d/ar;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/ar;-><init>(Lcom/aadhk/restpos/d/aq;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->j:Lcom/aadhk/restpos/d/ar;

    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/aq;->j:Lcom/aadhk/restpos/d/ar;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/at;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/at;-><init>(Lcom/aadhk/restpos/d/aq;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    move v1, v2

    .line 83
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 84
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 86
    iget-object v5, p0, Lcom/aadhk/restpos/d/aq;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_3
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0056

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/aq;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->b(Ljava/util/List;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->a(Lcom/aadhk/restpos/bean/Item;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->setTitle(I)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->i:Landroid/view/LayoutInflater;

    .line 59
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/aq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "bundleItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    .line 63
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    const v0, 0x7f030066

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->b:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->b:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->g:Landroid/widget/ListView;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->b:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->d:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->b:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->k:Lcom/aadhk/restpos/bean/Item;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->b:Landroid/view/View;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/aq;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
