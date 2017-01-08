.class public final Lcom/aadhk/restpos/d/l;
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

.field private static m:Landroid/database/sqlite/SQLiteDatabase;


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

.field private n:Lcom/aadhk/restpos/b/i;

.field private o:Lcom/aadhk/restpos/b/b;

.field private p:Lcom/aadhk/restpos/b/q;

.field private q:Lcom/aadhk/restpos/bean/Company;

.field private r:I

.field private s:Landroid/widget/PopupWindow;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/aadhk/restpos/d/l;->r:I

    .line 390
    return-void
.end method

.method static synthetic a()Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/l;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/l;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/l;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/aadhk/restpos/d/l;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/l;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/aadhk/restpos/d/l;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/aadhk/restpos/d/l;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->o:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    .line 118
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->q()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/l;->b:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/d/l;->k:Ljava/util/Map;

    .line 122
    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aadhk/restpos/bean/Category;

    .line 123
    sget-object v11, Lcom/aadhk/restpos/d/l;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->n:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/l;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/l;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/l;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/l;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/b/i;->a(JZDDI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/d/l;->j:Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->i:Landroid/view/View;

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/l;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    :goto_2
    return-void

    :cond_1
    move v0, v9

    .line 125
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->g:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 131
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    sput-object p1, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 132
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 378
    sget-object v0, Lcom/aadhk/restpos/d/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 379
    new-instance v0, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 380
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/l;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 381
    const v2, 0x7f0b005b

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 382
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 383
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f0901f5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/l;->setHasOptionsMenu(Z)V

    .line 91
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/d/l;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    new-instance v0, Lcom/aadhk/restpos/b/b;

    sget-object v1, Lcom/aadhk/restpos/d/l;->m:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->o:Lcom/aadhk/restpos/b/b;

    .line 93
    new-instance v0, Lcom/aadhk/restpos/b/i;

    sget-object v1, Lcom/aadhk/restpos/d/l;->m:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->n:Lcom/aadhk/restpos/b/i;

    .line 94
    new-instance v0, Lcom/aadhk/restpos/b/q;

    sget-object v1, Lcom/aadhk/restpos/d/l;->m:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->p:Lcom/aadhk/restpos/b/q;

    .line 95
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->q:Lcom/aadhk/restpos/bean/Company;

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->q:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/l;->v:I

    .line 98
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->t:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->u:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/aadhk/restpos/f/i;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/l;->w:I

    .line 101
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 142
    const v0, 0x7f0b02a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 143
    iget v0, p0, Lcom/aadhk/restpos/d/l;->r:I

    sget-object v1, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 144
    const v1, 0x7f0200ad

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 145
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 146
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 109
    :cond_0
    const v0, 0x7f030067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->i:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->i:Landroid/view/View;

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
    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    move-object v6, v0

    .line 267
    :goto_0
    new-instance v7, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getCategoryId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iput v1, p0, Lcom/aadhk/restpos/d/l;->x:I

    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setModifierGroupId(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarn(Z)V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setWarnQty(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->p:Lcom/aadhk/restpos/b/q;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/l;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/d/l;->u:Ljava/lang/String;

    iget v5, p0, Lcom/aadhk/restpos/d/l;->w:I

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/q;->a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v4

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setDisName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v0

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt()Z

    move-result v4

    if-eqz v4, :cond_4

    sub-double/2addr v2, v0

    :goto_3
    invoke-virtual {v7, v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setDisAmt(D)V

    :cond_0
    invoke-virtual {v7, v2, v3}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 268
    sget-object v0, Lcom/aadhk/restpos/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    sget-object v1, Lcom/aadhk/restpos/d/l;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Ljava/util/List;)V

    .line 270
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()V

    .line 271
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()V

    .line 272
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget v1, p0, Lcom/aadhk/restpos/d/l;->x:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(I)V

    .line 273
    iget-object v1, p0, Lcom/aadhk/restpos/d/l;->l:Lcom/viewpagerindicator/TabPageIndicator;

    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(I)V

    .line 274
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 275
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    move-object v6, v0

    goto/16 :goto_0

    .line 267
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    iget v4, p0, Lcom/aadhk/restpos/d/l;->v:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/aadhk/restpos/f/h;->a(DDI)D

    move-result-wide v0

    sub-double/2addr v2, v0

    goto :goto_3
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/aadhk/restpos/d/l;->r:I

    if-ne v0, v1, :cond_2

    .line 229
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v1, p0, Lcom/aadhk/restpos/d/l;->r:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 230
    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->d:Ljava/util/List;

    move v1, v2

    :goto_0
    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v5, Lcom/aadhk/restpos/d/l;->k:Ljava/util/Map;

    sget-object v0, Lcom/aadhk/restpos/d/l;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    iget-object v6, p0, Lcom/aadhk/restpos/d/l;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0b00c6

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->h:Landroid/widget/EditText;

    const v0, 0x7f0b00c7

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/bd;

    sget-object v5, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v6, p0, Lcom/aadhk/restpos/d/l;->c:Ljava/util/List;

    invoke-direct {v1, v5, v6}, Lcom/aadhk/restpos/a/bd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/d/n;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/n;-><init>(Lcom/aadhk/restpos/d/l;B)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    sget-object v1, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    sget-object v1, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 232
    :cond_2
    return v8
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->i:Landroid/view/View;

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aadhk/restpos/d/o;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/l;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/o;-><init>(Lcom/aadhk/restpos/d/l;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/l;->i:Landroid/view/View;

    const v2, 0x7f0b0140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v1, p0, Lcom/aadhk/restpos/d/l;->l:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/aadhk/restpos/d/l;->l:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->l:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/aadhk/restpos/d/m;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/m;-><init>(Lcom/aadhk/restpos/d/l;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/l;->l:Lcom/viewpagerindicator/TabPageIndicator;

    sget-object v0, Lcom/aadhk/restpos/d/l;->e:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(I)V

    .line 138
    return-void
.end method
