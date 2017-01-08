.class public final Lcom/aadhk/restpos/d/du;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/aadhk/restpos/bean/Company;

.field private B:Lcom/aadhk/restpos/g/ad;

.field private C:Lcom/aadhk/restpos/g/s;

.field private a:Lcom/aadhk/restpos/TakeOrderActivity;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ExpandableListView;

.field private e:Lcom/aadhk/restpos/bean/Order;

.field private f:Lcom/aadhk/restpos/bean/Customer;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/aadhk/restpos/a/n;

.field private p:Lcom/aadhk/restpos/util/r;

.field private q:Lcom/aadhk/restpos/bean/RolePermission;

.field private r:D

.field private s:D

.field private t:D

.field private u:D

.field private v:D

.field private w:D

.field private x:Z

.field private y:I

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 849
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/du;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/aadhk/restpos/d/du;->r:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/du;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/d/du;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->e()Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/aadhk/restpos/d/ea;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/ea;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const-wide/16 v0, 0x0

    .line 618
    .line 619
    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->r:D

    .line 620
    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->s:D

    .line 621
    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->t:D

    .line 623
    if-eqz p1, :cond_5

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v3, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/aadhk/restpos/bean/OrderItem;

    .line 625
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v12, :cond_7

    .line 626
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v0

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v2

    int-to-double v7, v2

    mul-double/2addr v0, v7

    .line 627
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 628
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v7, v10

    .line 629
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v2

    if-ne v2, v12, :cond_0

    .line 630
    add-double/2addr v0, v7

    goto :goto_1

    .line 632
    :cond_0
    sub-double/2addr v0, v7

    .line 634
    goto :goto_1

    .line 635
    :cond_1
    add-double v7, v3, v0

    .line 636
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v2

    if-ne v2, v12, :cond_2

    .line 637
    iget-wide v10, p0, Lcom/aadhk/restpos/d/du;->r:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/du;->u:D

    iget v4, p0, Lcom/aadhk/restpos/d/du;->y:I

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/du;->x:Z

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v2

    add-double/2addr v2, v10

    iput-wide v2, p0, Lcom/aadhk/restpos/d/du;->r:D

    .line 640
    :cond_2
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 641
    iget-wide v10, p0, Lcom/aadhk/restpos/d/du;->s:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/du;->v:D

    iget v4, p0, Lcom/aadhk/restpos/d/du;->y:I

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/du;->x:Z

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v2

    add-double/2addr v2, v10

    iput-wide v2, p0, Lcom/aadhk/restpos/d/du;->s:D

    .line 644
    :cond_3
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax3Id()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 645
    iget-wide v10, p0, Lcom/aadhk/restpos/d/du;->t:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/du;->w:D

    iget v4, p0, Lcom/aadhk/restpos/d/du;->y:I

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/du;->x:Z

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v0

    add-double/2addr v0, v10

    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->t:D

    :cond_4
    move-wide v0, v7

    :goto_2
    move-wide v3, v0

    .line 647
    goto/16 :goto_0

    :cond_5
    move-wide v3, v0

    .line 650
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 651
    return-void

    :cond_7
    move-wide v0, v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/du;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/aadhk/restpos/d/du;->s:D

    return-wide p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->B:Lcom/aadhk/restpos/g/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ef;

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v1, p0, p1, v2}, Lcom/aadhk/restpos/d/ef;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/bean/Order;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/du;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/du;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/du;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/aadhk/restpos/d/du;->t:D

    return-wide p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->p:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/aadhk/restpos/c/y;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v2, p0, Lcom/aadhk/restpos/d/du;->y:I

    invoke-direct {v0, v1, p1, v2}, Lcom/aadhk/restpos/c/y;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;I)V

    new-instance v1, Lcom/aadhk/restpos/d/dz;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/dz;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/y;->a(Lcom/aadhk/restpos/c/aa;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/y;->show()V

    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/du;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ed;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/ed;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ec;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/aadhk/restpos/d/ec;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/du;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/du;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v2, 0x7f09015f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->d:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/aadhk/restpos/a/n;

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/du;->i:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/aadhk/restpos/a/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->o:Lcom/aadhk/restpos/a/n;

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->d:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->o:Lcom/aadhk/restpos/a/n;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->d:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->d:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/aadhk/restpos/d/dv;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/dv;-><init>(Lcom/aadhk/restpos/d/du;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->d:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/du;)V
    .locals 5
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/du;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->p:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/du;->y:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/du;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->q:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/du;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/a/n;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->o:Lcom/aadhk/restpos/a/n;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/du;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/du;)D
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/d/du;->r:D

    return-wide v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/du;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/aadhk/restpos/d/du;->y:I

    return v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/du;)D
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/d/du;->s:D

    return-wide v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/d/du;)D
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/d/du;->t:D

    return-wide v0
.end method

.method static synthetic q(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/s;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->C:Lcom/aadhk/restpos/g/s;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 838
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    return-void
.end method

.method protected final a(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->B:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/ad;->b()Ljava/util/List;

    move-result-object v0

    .line 531
    new-instance v1, Lcom/aadhk/restpos/c/ds;

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2, v0, p1}, Lcom/aadhk/restpos/c/ds;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 532
    const v0, 0x7f08012f

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ds;->setTitle(I)V

    .line 533
    new-instance v0, Lcom/aadhk/restpos/d/eb;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/restpos/d/eb;-><init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ds;->a(Lcom/aadhk/restpos/c/dt;)V

    .line 541
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ds;->show()V

    .line 542
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->c()Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->B:Lcom/aadhk/restpos/g/ad;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->d()Lcom/aadhk/restpos/g/s;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->C:Lcom/aadhk/restpos/g/s;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->g:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/du;->x:Z

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/du;->y:I

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->u:D

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->v:D

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/du;->w:D

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->h:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->y()Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->q:Lcom/aadhk/restpos/bean/RolePermission;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->z:Ljava/util/List;

    .line 109
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 115
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    .line 655
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/du;->r:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 658
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/du;->s:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 659
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/du;->t:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    .line 661
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->f:Lcom/aadhk/restpos/bean/Customer;

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;)V

    .line 662
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ei;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ei;-><init>(Lcom/aadhk/restpos/d/du;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 665
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax2Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/du;->A:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax3Name(Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v12}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/aadhk/restpos/d/du;->r:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/du;->s:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/aadhk/restpos/d/du;->t:D

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v8

    iget v10, p0, Lcom/aadhk/restpos/d/du;->y:I

    iget-boolean v11, p0, Lcom/aadhk/restpos/d/du;->x:Z

    invoke-static/range {v0 .. v11}, Lcom/aadhk/restpos/util/m;->a(DDDDDIZ)D

    move-result-wide v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-wide v3, p0, Lcom/aadhk/restpos/d/du;->r:D

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-wide v3, p0, Lcom/aadhk/restpos/d/du;->s:D

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-wide v3, p0, Lcom/aadhk/restpos/d/du;->t:D

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    new-instance v3, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderPayment;->setOrderId(J)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodType(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    invoke-virtual {v3, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentTime(Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->j()V

    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ee;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ee;-><init>(Lcom/aadhk/restpos/d/du;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/du;->setHasOptionsMenu(Z)V

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->A()Lcom/aadhk/restpos/util/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->p:Lcom/aadhk/restpos/util/r;

    .line 91
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const v0, 0x7f03008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->b:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->c:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->m:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->k:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->l:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->n:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->j:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->k()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->e:Lcom/aadhk/restpos/bean/Order;

    iget-object v0, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->m()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/du;->f:Lcom/aadhk/restpos/bean/Customer;

    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/eh;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/eh;-><init>(Lcom/aadhk/restpos/d/du;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/du;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method
