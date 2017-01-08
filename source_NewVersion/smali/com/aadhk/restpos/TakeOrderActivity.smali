.class public Lcom/aadhk/restpos/TakeOrderActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private A:Lcom/aadhk/restpos/bean/RolePermission;

.field private B:Lcom/aadhk/restpos/bean/RolePermission;

.field private C:Ljava/lang/String;

.field private D:Lcom/aadhk/restpos/bean/Order;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field a:Lcom/aadhk/product/library/a/b;

.field private l:Z

.field private m:Z

.field private n:Lcom/aadhk/restpos/b/m;

.field private o:Lcom/aadhk/restpos/b/i;

.field private p:Lcom/aadhk/restpos/b/r;

.field private q:Lcom/aadhk/restpos/b/w;

.field private r:Lcom/aadhk/restpos/b/u;

.field private s:Lcom/aadhk/restpos/b/l;

.field private t:Landroid/support/v4/app/FragmentManager;

.field private u:Landroid/database/sqlite/SQLiteDatabase;

.field private v:Lcom/aadhk/restpos/e/f;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/aadhk/restpos/bean/Customer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 606
    new-instance v0, Lcom/aadhk/restpos/ce;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/ce;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Lcom/aadhk/product/library/a/b;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/b/m;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->n:Lcom/aadhk/restpos/b/m;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->v()V

    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/b/w;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->q:Lcom/aadhk/restpos/b/w;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->x:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->s:Lcom/aadhk/restpos/b/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/l;->b(I)Ljava/util/List;

    move-result-object v0

    .line 410
    new-instance v1, Lcom/aadhk/restpos/c/bz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/aadhk/restpos/c/bz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 411
    const v0, 0x7f09028a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bz;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    new-instance v0, Lcom/aadhk/restpos/cb;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/cb;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bz;->a(Lcom/aadhk/restpos/c/ca;)V

    .line 455
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bz;->show()V

    .line 456
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const v4, 0x7f0b005b

    const/4 v3, 0x1

    .line 190
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v2, "bundleOrdered"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    new-instance v2, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 195
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 196
    const v0, 0x7f0b005c

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 198
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lcom/aadhk/restpos/d/q;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/q;-><init>()V

    .line 204
    :goto_0
    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 205
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 216
    :goto_1
    return-void

    .line 201
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/d/l;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/l;-><init>()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 209
    const-string v2, "bundleOrdered"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    new-instance v2, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 211
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 214
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public final a(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/i;->d(J)Lcom/aadhk/restpos/bean/Item;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 173
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    .line 175
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    if-gtz v0, :cond_0

    .line 176
    invoke-virtual {v1, v5}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v0

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 182
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 183
    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->b:Landroid/content/res/Resources;

    const v3, 0x7f0901f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 187
    :cond_2
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0b005b

    .line 494
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->n:Lcom/aadhk/restpos/b/m;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/aadhk/restpos/b/m;->a(Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Order;Ljava/lang/String;)J

    move-result-wide v0

    .line 497
    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->n:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/b/m;->c(J)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    .line 499
    const v0, 0x7f090218

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 500
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 504
    const-string v2, "bundleOrdered"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    new-instance v2, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 506
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 508
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v1, :cond_1

    .line 509
    const v1, 0x7f0b005c

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 510
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    if-eqz v1, :cond_0

    .line 511
    new-instance v1, Lcom/aadhk/restpos/d/q;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/q;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 518
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 519
    return-void

    .line 513
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/d/l;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/l;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
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
    .line 693
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Ljava/util/List;

    .line 694
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 558
    new-instance v0, Lcom/aadhk/product/library/a/c;

    new-instance v1, Lcom/aadhk/restpos/cd;

    invoke-direct {v1, p0, p1, p2}, Lcom/aadhk/restpos/cd;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/c;-><init>(Lcom/aadhk/product/library/a/b;)V

    .line 581
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 582
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/product/library/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-virtual {v0, v3}, Lcom/aadhk/product/library/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
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
    .line 697
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/util/List;

    .line 698
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 236
    const v1, 0x7f0b005c

    new-instance v2, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/bh;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 237
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 242
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const v2, 0x7f0b005b

    .line 246
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 248
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Lcom/aadhk/restpos/d/q;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/q;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 253
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 255
    :cond_0
    return-void

    .line 251
    :cond_1
    new-instance v1, Lcom/aadhk/restpos/d/l;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/l;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 292
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 293
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setStartTime(Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 295
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090307

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 302
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 303
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 525
    instance-of v1, v0, Lcom/aadhk/restpos/d/bh;

    if-eqz v1, :cond_0

    .line 526
    check-cast v0, Lcom/aadhk/restpos/d/bh;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/bh;->a(I)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 530
    instance-of v1, v0, Lcom/aadhk/restpos/d/bh;

    if-eqz v1, :cond_0

    .line 531
    check-cast v0, Lcom/aadhk/restpos/d/bh;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/bh;->a(I)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->x:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lcom/aadhk/product/library/a/c;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Lcom/aadhk/product/library/a/b;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/c;-><init>(Lcom/aadhk/product/library/a/b;)V

    .line 591
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 592
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/product/library/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {v0, v3}, Lcom/aadhk/product/library/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 675
    invoke-static {p0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    .line 676
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b005c

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v5, 0x7f0b005b

    .line 93
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "prefOrderStyle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    .line 96
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    .line 99
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 100
    const-string v0, "bundleOrder"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    .line 101
    const-string v0, "bundleOrdered"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 102
    const-string v0, "bundleCustomer"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Customer;

    .line 104
    if-eqz p1, :cond_1

    .line 105
    const-string v0, "bundleOrder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v0, Lcom/aadhk/restpos/e/f;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/e/f;

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->f:Ljava/util/Map;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Lcom/aadhk/restpos/bean/RolePermission;

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->f:Ljava/util/Map;

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Lcom/aadhk/restpos/bean/RolePermission;

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    new-instance v0, Lcom/aadhk/restpos/b/m;

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->n:Lcom/aadhk/restpos/b/m;

    .line 121
    new-instance v0, Lcom/aadhk/restpos/b/i;

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Lcom/aadhk/restpos/b/i;

    .line 122
    new-instance v0, Lcom/aadhk/restpos/b/w;

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->q:Lcom/aadhk/restpos/b/w;

    .line 123
    new-instance v0, Lcom/aadhk/restpos/b/r;

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Lcom/aadhk/restpos/b/r;

    .line 124
    new-instance v0, Lcom/aadhk/restpos/b/u;

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/aadhk/restpos/b/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->r:Lcom/aadhk/restpos/b/u;

    .line 125
    new-instance v0, Lcom/aadhk/restpos/b/l;

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/aadhk/restpos/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->s:Lcom/aadhk/restpos/b/l;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Lcom/aadhk/restpos/b/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/r;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Lcom/aadhk/restpos/b/r;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->x:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/util/List;

    if-nez v0, :cond_3

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/util/List;

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v1, :cond_5

    .line 138
    new-instance v1, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 139
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 141
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    if-eqz v1, :cond_4

    .line 142
    new-instance v1, Lcom/aadhk/restpos/d/q;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/q;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 159
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 160
    return-void

    .line 144
    :cond_4
    new-instance v1, Lcom/aadhk/restpos/d/l;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/l;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 147
    :cond_5
    if-eqz v3, :cond_6

    .line 148
    new-instance v1, Lcom/aadhk/restpos/d/bh;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bh;-><init>()V

    .line 149
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 152
    :cond_6
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    if-eqz v1, :cond_7

    .line 153
    new-instance v1, Lcom/aadhk/restpos/d/q;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/q;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 155
    :cond_7
    new-instance v1, Lcom/aadhk/restpos/d/l;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/l;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 269
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->l:Z

    if-eqz v0, :cond_0

    .line 270
    const v0, 0x7f0b02a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 275
    const-string v1, "bundleOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 279
    const v0, 0x7f0b02ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 280
    const v0, 0x7f0b02aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 281
    const v0, 0x7f0b02a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 282
    const v0, 0x7f0b02ab

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 283
    const v0, 0x7f0b02ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 286
    :cond_2
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 724
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 725
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b029c

    if-ne v1, v2, :cond_0

    .line 469
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 470
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 471
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 472
    const-string v3, "bundleOrder"

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 474
    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 489
    :goto_0
    return v0

    .line 478
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b028d

    if-ne v1, v2, :cond_1

    .line 479
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 480
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 481
    const-string v3, "bundleSplitType"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 482
    const-string v3, "bundleOrder"

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 484
    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    goto :goto_0

    .line 489
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b02aa

    const/4 v4, 0x2

    const v3, 0x7f0b005b

    const/4 v0, 0x1

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 308
    invoke-static {p0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    .line 404
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b02a8

    if-ne v1, v2, :cond_2

    .line 311
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-boolean v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->m:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/aadhk/restpos/d/q;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/q;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/aadhk/restpos/d/l;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/l;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 313
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b02ad

    if-ne v1, v2, :cond_3

    .line 314
    new-instance v1, Lcom/aadhk/restpos/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    const v2, 0x7f090308

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ad;->setTitle(I)V

    .line 316
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ad;->b()V

    .line 317
    new-instance v2, Lcom/aadhk/restpos/bz;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/bz;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ad;->a(Lcom/aadhk/product/library/b/f;)V

    .line 325
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ad;->show()V

    goto :goto_0

    .line 327
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 328
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->r:Lcom/aadhk/restpos/b/u;

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/u;->d(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 330
    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 331
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    if-ne v1, v0, :cond_5

    .line 336
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 337
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 338
    const-string v3, "bundleSplitType"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 339
    const-string v3, "bundleOrder"

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 340
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    goto/16 :goto_0

    .line 344
    :cond_5
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    if-ne v1, v4, :cond_6

    .line 345
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 346
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 347
    const-string v3, "bundleSplitType"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 348
    const-string v3, "bundleOrder"

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 350
    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    goto/16 :goto_0

    .line 354
    :cond_6
    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 355
    new-instance v2, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v2, p0, v1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v3, 0x7f0f0011

    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 358
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b02ac

    if-ne v1, v2, :cond_9

    .line 359
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    if-nez v1, :cond_8

    .line 361
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 362
    new-instance v2, Lcom/aadhk/restpos/d/cu;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/cu;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 363
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 364
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 366
    :cond_8
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 367
    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 368
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    .line 371
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b02a9

    if-ne v1, v2, :cond_c

    .line 372
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    if-nez v1, :cond_b

    .line 373
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v1

    if-nez v1, :cond_a

    .line 374
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->v()V

    goto/16 :goto_0

    .line 376
    :cond_a
    new-instance v1, Lcom/aadhk/restpos/c/au;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v2, Lcom/aadhk/restpos/ca;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ca;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 383
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_0

    .line 386
    :cond_b
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 387
    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 388
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    .line 391
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b02ab

    if-ne v1, v2, :cond_f

    .line 392
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 393
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 394
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 396
    :cond_d
    const v1, 0x7f0901f4

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 399
    :cond_e
    const v1, 0x7f090203

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 404
    :cond_f
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 680
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 681
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "prefSessionStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;J)V

    .line 682
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    const-string v0, "bundleOrder"

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    const-string v0, "bundleCustomer"

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public final p()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method public final r()Lcom/aadhk/restpos/bean/Customer;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method
