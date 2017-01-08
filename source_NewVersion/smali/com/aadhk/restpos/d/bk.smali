.class public final Lcom/aadhk/restpos/d/bk;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:D

.field private B:D

.field private C:Z

.field private D:I

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/aadhk/restpos/bean/Company;

.field a:Lcom/aadhk/product/library/a/b;

.field private b:Lcom/aadhk/restpos/TakeOrderActivity;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ExpandableListView;

.field private f:Lcom/aadhk/restpos/bean/Order;

.field private g:Lcom/aadhk/restpos/bean/Customer;

.field private h:Landroid/content/res/Resources;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/aadhk/restpos/b/n;

.field private l:Lcom/aadhk/restpos/b/w;

.field private m:Lcom/aadhk/restpos/b/u;

.field private n:Lcom/aadhk/restpos/b/m;

.field private o:Lcom/aadhk/restpos/b/l;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/aadhk/restpos/a/j;

.field private w:Lcom/aadhk/restpos/f/l;

.field private x:Lcom/aadhk/restpos/bean/RolePermission;

.field private y:D

.field private z:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 520
    new-instance v0, Lcom/aadhk/restpos/d/bu;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/bu;-><init>(Lcom/aadhk/restpos/d/bk;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/product/library/a/b;

    .line 557
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bk;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/aadhk/restpos/d/bk;->y:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bk;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v2, 0x7f0b011b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 173
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->e:Landroid/widget/ExpandableListView;

    .line 180
    new-instance v0, Lcom/aadhk/restpos/a/j;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/aadhk/restpos/a/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->v:Lcom/aadhk/restpos/a/j;

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->e:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->v:Lcom/aadhk/restpos/a/j;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->e:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->e:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/aadhk/restpos/d/bl;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/bl;-><init>(Lcom/aadhk/restpos/d/bk;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    move v0, v1

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->o:Lcom/aadhk/restpos/b/l;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/b/l;->b(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/bz;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/restpos/c/bz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    const v0, 0x7f09028a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bk;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bz;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/aadhk/restpos/d/br;

    invoke-direct {v0, p0, p1, v1}, Lcom/aadhk/restpos/d/br;-><init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/c/bz;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bz;->a(Lcom/aadhk/restpos/c/ca;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bz;->show()V

    return-void
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

    .line 374
    .line 375
    iput-wide v0, p0, Lcom/aadhk/restpos/d/bk;->y:D

    .line 376
    iput-wide v0, p0, Lcom/aadhk/restpos/d/bk;->z:D

    .line 378
    if-eqz p1, :cond_4

    .line 379
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v3, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/aadhk/restpos/bean/OrderItem;

    .line 380
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v0

    if-eq v0, v12, :cond_6

    .line 381
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v0

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v2

    int-to-double v7, v2

    mul-double/2addr v0, v7

    .line 382
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

    .line 383
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v7, v10

    .line 384
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v2

    if-ne v2, v12, :cond_0

    .line 385
    add-double/2addr v0, v7

    goto :goto_1

    .line 387
    :cond_0
    sub-double/2addr v0, v7

    .line 389
    goto :goto_1

    .line 390
    :cond_1
    add-double v7, v3, v0

    .line 391
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v2

    if-ne v2, v12, :cond_2

    .line 392
    iget-wide v10, p0, Lcom/aadhk/restpos/d/bk;->y:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/bk;->A:D

    iget v4, p0, Lcom/aadhk/restpos/d/bk;->D:I

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/bk;->C:Z

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/f/h;->a(DDIZ)D

    move-result-wide v2

    add-double/2addr v2, v10

    iput-wide v2, p0, Lcom/aadhk/restpos/d/bk;->y:D

    .line 395
    :cond_2
    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 396
    iget-wide v10, p0, Lcom/aadhk/restpos/d/bk;->z:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/bk;->B:D

    iget v4, p0, Lcom/aadhk/restpos/d/bk;->D:I

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/bk;->C:Z

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/f/h;->a(DDIZ)D

    move-result-wide v0

    add-double/2addr v0, v10

    iput-wide v0, p0, Lcom/aadhk/restpos/d/bk;->z:D

    :cond_3
    move-wide v0, v7

    :goto_2
    move-wide v3, v0

    .line 398
    goto :goto_0

    :cond_4
    move-wide v3, v0

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 404
    return-void

    :cond_6
    move-wide v0, v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bk;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/aadhk/restpos/d/bk;->z:D

    return-wide p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bk;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->h:Landroid/content/res/Resources;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/bk;->a(Ljava/util/List;)V

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->u:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/bk;->D:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/bk;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->n:Lcom/aadhk/restpos/b/m;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/d;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2, v0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/d/bq;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/restpos/d/bq;-><init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/d;->show()V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/bk;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->x:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/aadhk/restpos/c/y;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v2, p0, Lcom/aadhk/restpos/d/bk;->D:I

    invoke-direct {v0, v1, p1, v2}, Lcom/aadhk/restpos/c/y;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;I)V

    new-instance v1, Lcom/aadhk/restpos/d/bp;

    invoke-direct {v1, p0, p1, v0}, Lcom/aadhk/restpos/d/bp;-><init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/c/y;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/y;->a(Lcom/aadhk/restpos/c/aa;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/y;->show()V

    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    new-instance v2, Lcom/aadhk/restpos/d/bo;

    invoke-direct {v2, p0, p1}, Lcom/aadhk/restpos/d/bo;-><init>(Lcom/aadhk/restpos/d/bk;Lcom/aadhk/restpos/bean/OrderItem;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->h:Landroid/content/res/Resources;

    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/n;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->k:Lcom/aadhk/restpos/b/n;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/bk;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/a/j;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->v:Lcom/aadhk/restpos/a/j;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bk;->b()V

    return-void
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bk;->a()V

    return-void
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/f/l;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->w:Lcom/aadhk/restpos/f/l;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/bk;)D
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/aadhk/restpos/d/bk;->y:D

    return-wide v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/bk;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/aadhk/restpos/d/bk;->D:I

    return v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/bk;)D
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/aadhk/restpos/d/bk;->z:D

    return-wide v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/b/w;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->l:Lcom/aadhk/restpos/b/w;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/aadhk/restpos/b/n;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/bk;->k:Lcom/aadhk/restpos/b/n;

    .line 108
    new-instance v1, Lcom/aadhk/restpos/b/w;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/bk;->l:Lcom/aadhk/restpos/b/w;

    .line 109
    new-instance v1, Lcom/aadhk/restpos/b/u;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/bk;->m:Lcom/aadhk/restpos/b/u;

    .line 110
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/bk;->n:Lcom/aadhk/restpos/b/m;

    .line 111
    new-instance v1, Lcom/aadhk/restpos/b/l;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/bk;->o:Lcom/aadhk/restpos/b/l;

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->i:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/bk;->C:Z

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/bk;->D:I

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/bk;->A:D

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/bk;->B:D

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->j:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->u()Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->x:Lcom/aadhk/restpos/bean/RolePermission;

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->E:Ljava/util/List;

    .line 121
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 126
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 127
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const v5, 0x7f0901e1

    const/4 v10, 0x0

    .line 408
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 410
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->clone()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    .line 413
    iget-wide v1, p0, Lcom/aadhk/restpos/d/bk;->y:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 414
    iget-wide v1, p0, Lcom/aadhk/restpos/d/bk;->z:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 417
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 418
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 419
    const-string v3, "bundleOrderClone"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 420
    const-string v0, "bundleOrder"

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    const-string v0, "bundleCustomer"

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->g:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 423
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    const-class v2, Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/bk;->startActivity(Landroid/content/Intent;)V

    .line 425
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->m:Lcom/aadhk/restpos/b/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/u;->e(J)D

    move-result-wide v0

    .line 428
    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->n:Lcom/aadhk/restpos/b/m;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/b/m;->e(J)D

    move-result-wide v2

    .line 430
    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/h;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->m:Lcom/aadhk/restpos/b/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/u;->c(J)Ljava/util/List;

    move-result-object v2

    .line 432
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v1, v10

    .line 435
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 436
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v4

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->i:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/aadhk/restpos/f/j;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 435
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 438
    :cond_2
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1, v3}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 439
    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(I)V

    .line 440
    new-instance v1, Lcom/aadhk/restpos/d/bt;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/bt;-><init>(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 468
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 472
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/bk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    .line 477
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/d/bk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    .line 482
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->F:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax2Name(Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v11}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/aadhk/restpos/d/bk;->y:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/bk;->z:D

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v6

    iget v8, p0, Lcom/aadhk/restpos/d/bk;->D:I

    iget-boolean v9, p0, Lcom/aadhk/restpos/d/bk;->C:Z

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->b(DDDDIZ)D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    iget-wide v3, p0, Lcom/aadhk/restpos/d/bk;->y:D

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    iget-wide v3, p0, Lcom/aadhk/restpos/d/bk;->z:D

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    new-instance v2, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setOrderId(J)V

    const v3, 0x7f0902ab

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/bk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodType(I)V

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentTime(Ljava/lang/String;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->g()V

    .line 485
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/product/library/a/b;

    const v3, 0x7f0901f0

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/bk;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 486
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_6

    .line 487
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v12}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 489
    :cond_6
    invoke-virtual {v0, v12}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bk;->setHasOptionsMenu(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->h:Landroid/content/res/Resources;

    .line 99
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->w:Lcom/aadhk/restpos/f/l;

    .line 100
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v1, 0x7f0b016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->t:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->r:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->s:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->u:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->q:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->p()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->r()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->g:Lcom/aadhk/restpos/bean/Customer;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->k:Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/n;->a(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bk;->a()V

    invoke-direct {p0}, Lcom/aadhk/restpos/d/bk;->b()V

    .line 149
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
