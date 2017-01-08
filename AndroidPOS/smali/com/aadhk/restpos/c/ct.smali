.class public final Lcom/aadhk/restpos/c/ct;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Lcom/aadhk/restpos/OrderListActivity;

.field private g:Lcom/aadhk/restpos/c/cv;

.field private h:Landroid/widget/GridView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/aadhk/restpos/g/o;

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
.method public constructor <init>(Lcom/aadhk/restpos/OrderListActivity;)V
    .locals 17
    .parameter

    .prologue
    .line 37
    const v2, 0x7f030061

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 38
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aadhk/restpos/c/ct;->f:Lcom/aadhk/restpos/OrderListActivity;

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/aadhk/restpos/OrderListActivity;->a()Lcom/aadhk/restpos/g/o;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/c/ct;->j:Lcom/aadhk/restpos/g/o;

    .line 41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->j:Lcom/aadhk/restpos/g/o;

    invoke-virtual {v2}, Lcom/aadhk/restpos/g/o;->a()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/c/ct;->k:Ljava/util/List;

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/aadhk/restpos/OrderListActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v13

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/c/ct;->l:Ljava/util/Map;

    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/aadhk/restpos/bean/Category;

    .line 46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/c/ct;->l:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->j:Lcom/aadhk/restpos/g/o;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v3

    invoke-virtual {v13}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v5

    invoke-virtual {v13}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v6

    invoke-virtual {v13}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v8

    invoke-virtual {v13}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v10

    invoke-virtual {v13}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v12

    invoke-virtual/range {v2 .. v12}, Lcom/aadhk/restpos/g/o;->a(JZDDDI)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    const v2, 0x7f090160

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/c/ct;->i:Landroid/widget/LinearLayout;

    .line 50
    const v2, 0x7f090161

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/c/ct;->h:Landroid/widget/GridView;

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/aadhk/restpos/bean/Category;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/aadhk/restpos/OrderListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030027

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 53
    const v2, 0x7f09007b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 54
    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aadhk/restpos/c/ct;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/c/ct;->k:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 57
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/c/ct;->n:Landroid/widget/Button;

    .line 59
    :cond_1
    new-instance v3, Lcom/aadhk/restpos/c/cu;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/aadhk/restpos/c/cu;-><init>(Lcom/aadhk/restpos/c/ct;Lcom/aadhk/restpos/OrderListActivity;Landroid/widget/Button;Lcom/aadhk/restpos/bean/Category;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 73
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->n:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->n:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 77
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/c/ct;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    const v2, 0x7f09015f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ct;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/ct;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ct;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/c/ct;->n:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ct;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/c/ct;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/ct;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/ct;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/ct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/ct;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/ct;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/c/ct;->h:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/cv;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/aadhk/restpos/c/ct;->g:Lcom/aadhk/restpos/c/cv;

    .line 84
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
    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/c/ct;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/c/ct;->g:Lcom/aadhk/restpos/c/cv;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/aadhk/restpos/c/ct;->g:Lcom/aadhk/restpos/c/cv;

    invoke-interface {v1, v0}, Lcom/aadhk/restpos/c/cv;->a(Lcom/aadhk/restpos/bean/Item;)V

    .line 95
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ct;->dismiss()V

    .line 97
    :cond_0
    return-void
.end method
