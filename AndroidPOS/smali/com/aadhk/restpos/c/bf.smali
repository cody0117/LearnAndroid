.class public final Lcom/aadhk/restpos/c/bf;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/widget/Button;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderModifier;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/LayoutInflater;

.field private l:Lcom/aadhk/restpos/bean/OrderItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    const v0, 0x7f0300b7

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 43
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bf;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/c/bf;->f:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/bf;->g:I

    .line 50
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bf;->i:Ljava/util/List;

    .line 51
    iput-object p3, p0, Lcom/aadhk/restpos/c/bf;->j:Ljava/util/List;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bf;->k:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/aadhk/restpos/c/bf;->l:Lcom/aadhk/restpos/bean/OrderItem;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    goto :goto_0

    .line 56
    :cond_3
    const v0, 0x7f0902ac

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/c/bh;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/bh;-><init>(Lcom/aadhk/restpos/c/bf;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/aadhk/restpos/c/bg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bg;-><init>(Lcom/aadhk/restpos/c/bf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/bf;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bf;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bf;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/aadhk/restpos/c/bf;->g:I

    return v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/bf;)Lcom/aadhk/restpos/bean/OrderItem;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->l:Lcom/aadhk/restpos/bean/OrderItem;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/bf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/c/bf;->a:Lcom/aadhk/product/library/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bf;->dismiss()V

    .line 95
    :cond_1
    return-void
.end method
