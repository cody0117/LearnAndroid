.class public final Lcom/aadhk/restpos/d/ag;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/aadhk/restpos/TakeOrderActivity;

.field private static k:Ljava/util/Map;
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

.field private static t:Lcom/aadhk/restpos/g/ad;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Z

.field private l:Lcom/viewpagerindicator/TabPageIndicator;

.field private m:Lcom/aadhk/restpos/bean/Company;

.field private n:Landroid/widget/PopupWindow;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 379
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ag;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ag;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/aadhk/restpos/d/ag;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/aadhk/restpos/d/ag;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f()Lcom/aadhk/restpos/g/ad;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/aadhk/restpos/d/ag;->t:Lcom/aadhk/restpos/g/ad;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->i:Landroid/view/View;

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 280
    new-instance v1, Lcom/aadhk/restpos/d/aj;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ag;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/aj;-><init>(Lcom/aadhk/restpos/d/ag;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 281
    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->i:Landroid/view/View;

    const v2, 0x7f090185

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v1, p0, Lcom/aadhk/restpos/d/ag;->l:Lcom/viewpagerindicator/TabPageIndicator;

    .line 282
    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->l:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 283
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->l:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/aadhk/restpos/d/ah;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ah;-><init>(Lcom/aadhk/restpos/d/ag;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 290
    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->l:Lcom/viewpagerindicator/TabPageIndicator;

    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->o()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(I)V

    .line 291
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Ljava/util/List;

    .line 180
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 181
    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 182
    const v0, 0x7f0900d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->h:Landroid/widget/EditText;

    .line 183
    const v0, 0x7f0900d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->f:Landroid/widget/ListView;

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    new-instance v2, Lcom/aadhk/restpos/util/d;

    invoke-direct {v2}, Lcom/aadhk/restpos/util/d;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->f:Landroid/widget/ListView;

    new-instance v2, Lcom/aadhk/restpos/a/bl;

    sget-object v3, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/aadhk/restpos/a/bl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/aadhk/restpos/d/ai;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/ai;-><init>(Lcom/aadhk/restpos/d/ag;B)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    new-instance v0, Landroid/widget/PopupWindow;

    sget-object v2, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    sget-object v1, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a()Landroid/widget/Button;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 231
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->l()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/ag;->b:Ljava/util/List;

    .line 233
    const/4 v1, 0x0

    move v2, v3

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 234
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 240
    :cond_0
    :goto_2
    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 241
    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getCategoryId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 242
    iput v3, p0, Lcom/aadhk/restpos/d/ag;->s:I

    .line 240
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 245
    :cond_2
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget v1, p0, Lcom/aadhk/restpos/d/ag;->s:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(I)V

    .line 246
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ag;->g()V

    .line 247
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/ag;->t:Lcom/aadhk/restpos/g/ad;

    .line 97
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ag;->q:I

    .line 100
    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->o:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/aadhk/restpos/util/o;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->p:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/aadhk/restpos/util/o;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ag;->r:I

    .line 105
    sget-object v0, Lcom/aadhk/restpos/d/ag;->t:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/ad;->a()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    .line 106
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->l()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/ag;->b:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/d/ag;->k:Ljava/util/Map;

    .line 110
    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/Category;

    .line 111
    sget-object v12, Lcom/aadhk/restpos/d/ag;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    sget-object v0, Lcom/aadhk/restpos/d/ag;->t:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/ag;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v10}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lcom/aadhk/restpos/g/ad;->a(JZDDDI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 116
    sget-object v2, Lcom/aadhk/restpos/d/ag;->k:Ljava/util/Map;

    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 118
    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 122
    :cond_2
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ag;->j:Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->i:Landroid/view/View;

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ag;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :goto_4
    return-void

    .line 122
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    sput-object p1, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 130
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 367
    sget-object v0, Lcom/aadhk/restpos/d/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    new-instance v0, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/dr;-><init>()V

    .line 369
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ag;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 370
    const v2, 0x7f090060

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 371
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 372
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f080232

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/ag;->setHasOptionsMenu(Z)V

    .line 81
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 89
    :cond_0
    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ag;->i:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->i:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    move-object v6, v0

    .line 257
    :goto_0
    new-instance v7, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getCategoryId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iput v1, p0, Lcom/aadhk/restpos/d/ag;->s:I

    sget-object v0, Lcom/aadhk/restpos/d/ag;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setModifierGroupId(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setKitchenNoteGroupId(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarn(Z)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarnQty(I)V

    sget-object v0, Lcom/aadhk/restpos/d/ag;->t:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/ag;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ag;->p:Ljava/lang/String;

    iget v5, p0, Lcom/aadhk/restpos/d/ag;->r:I

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/g/ad;->a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v4

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v0

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDiscountAmt()Z

    move-result v4

    if-eqz v4, :cond_4

    sub-double/2addr v2, v0

    :goto_3
    invoke-virtual {v7, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountAmt(D)V

    :cond_0
    invoke-virtual {v7, v2, v3}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 258
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 259
    invoke-virtual {p0, v7}, Lcom/aadhk/restpos/d/ag;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 260
    sget-object v0, Lcom/aadhk/restpos/d/ag;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->f()V

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 262
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ag;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    move-object v6, v0

    goto/16 :goto_0

    .line 257
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    iget v4, p0, Lcom/aadhk/restpos/d/ag;->q:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v0

    sub-double/2addr v2, v0

    goto :goto_3
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ag;->g()V

    .line 136
    return-void
.end method
