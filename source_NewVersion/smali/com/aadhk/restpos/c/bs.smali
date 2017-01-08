.class public final Lcom/aadhk/restpos/c/bs;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Lcom/aadhk/restpos/ListOrdersActivity;

.field private g:Lcom/aadhk/restpos/c/bu;

.field private h:Landroid/widget/GridView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/database/sqlite/SQLiteDatabase;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/ListOrdersActivity;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    .line 42
    const v0, 0x7f030053

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/aadhk/restpos/c/bs;->f:Lcom/aadhk/restpos/ListOrdersActivity;

    .line 45
    iget-object v0, p1, Lcom/aadhk/restpos/ListOrdersActivity;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bs;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    new-instance v0, Lcom/aadhk/restpos/b/b;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bs;->j:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bs;->k:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Lcom/aadhk/restpos/ListOrdersActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v9

    .line 50
    new-instance v0, Lcom/aadhk/restpos/b/i;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bs;->j:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/c/bs;->l:Ljava/util/Map;

    .line 52
    iget-object v1, p0, Lcom/aadhk/restpos/c/bs;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/Category;

    .line 53
    iget-object v11, p0, Lcom/aadhk/restpos/c/bs;->l:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v3

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v6

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/b/i;->a(JZDDI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_0
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bs;->i:Landroid/widget/LinearLayout;

    .line 57
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bs;->h:Landroid/widget/GridView;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/Category;

    .line 59
    invoke-virtual {p1}, Lcom/aadhk/restpos/ListOrdersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 60
    const v0, 0x7f0b006f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Button;

    .line 61
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->k:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 64
    iput-object v2, p0, Lcom/aadhk/restpos/c/bs;->n:Landroid/widget/Button;

    .line 66
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bt;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/aadhk/restpos/c/bt;-><init>(Lcom/aadhk/restpos/c/bs;Lcom/aadhk/restpos/ListOrdersActivity;Landroid/widget/Button;Lcom/aadhk/restpos/bean/Category;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->n:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->n:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bs;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bs;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/c/bs;->n:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bs;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/c/bs;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bs;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bs;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bs;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->h:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/aadhk/restpos/c/bs;->g:Lcom/aadhk/restpos/c/bu;

    .line 92
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/c/bs;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/c/bs;->g:Lcom/aadhk/restpos/c/bu;

    invoke-interface {v1, v0}, Lcom/aadhk/restpos/c/bu;->a(Lcom/aadhk/restpos/bean/Item;)V

    .line 102
    return-void
.end method
