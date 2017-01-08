.class public Lcom/aadhk/restpos/TakeOrderActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/os/Bundle;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Z

.field private E:Lcom/aadhk/restpos/d/al;

.field private F:Lcom/aadhk/restpos/d/ag;

.field private G:Lcom/aadhk/restpos/g/ad;

.field private H:Lcom/aadhk/restpos/g/s;

.field private I:Lcom/aadhk/restpos/g/h;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/Button;

.field private N:Landroid/widget/Button;

.field private O:Landroid/widget/Button;

.field private P:Landroid/widget/Button;

.field private Q:Landroid/widget/Button;

.field private R:Landroid/widget/Button;

.field private S:Lcom/aadhk/product/library/a/c;

.field private a:Z

.field private o:Z

.field private p:Landroid/support/v4/app/FragmentManager;

.field private q:Lcom/aadhk/restpos/d/dr;

.field private r:Lcom/aadhk/restpos/e/g;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/aadhk/restpos/bean/Customer;

.field private w:Lcom/aadhk/restpos/bean/RolePermission;

.field private x:Lcom/aadhk/restpos/bean/RolePermission;

.field private y:Ljava/lang/String;

.field private z:Lcom/aadhk/restpos/bean/Order;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 974
    new-instance v0, Lcom/aadhk/restpos/dz;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/dz;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->S:Lcom/aadhk/product/library/a/c;

    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->N:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 583
    new-instance v0, Lcom/aadhk/restpos/c/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/ak;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 584
    const v1, 0x7f080368

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ak;->setTitle(I)V

    .line 585
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ak;->b()V

    .line 586
    new-instance v1, Lcom/aadhk/restpos/dt;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/dt;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ak;->a(Lcom/aadhk/product/library/b/f;)V

    .line 594
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ak;->show()V

    .line 595
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ed;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/ed;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 602
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 619
    :goto_0
    return-void

    .line 604
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 605
    const v1, 0x7f08022a

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 606
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 609
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 610
    const v1, 0x7f080264

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 611
    new-instance v1, Lcom/aadhk/restpos/du;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/du;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 617
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->G()V

    .line 640
    :goto_0
    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 627
    new-instance v1, Lcom/aadhk/restpos/dv;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/dv;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 633
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 637
    const v1, 0x7f08022b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 638
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0
.end method

.method private F()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 643
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    new-instance v1, Lcom/aadhk/product/library/a/e;

    new-instance v2, Lcom/aadhk/restpos/dx;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/dx;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v3}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 652
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-virtual {v1, v3}, Lcom/aadhk/product/library/a/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 647
    :cond_1
    const v0, 0x7f080231

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 650
    :cond_2
    const v0, 0x7f080242

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->G:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/ad;->b()Ljava/util/List;

    move-result-object v0

    .line 687
    new-instance v1, Lcom/aadhk/restpos/c/du;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/du;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 688
    const v0, 0x7f0800cf

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/du;->setTitle(I)V

    .line 689
    new-instance v0, Lcom/aadhk/restpos/dw;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/dw;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/du;->a(Lcom/aadhk/restpos/c/dv;)V

    .line 704
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/du;->show()V

    .line 705
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/bean/Order;)Lcom/aadhk/restpos/bean/Order;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/d/al;)Lcom/aadhk/restpos/d/al;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/g/ad;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->G:Lcom/aadhk/restpos/g/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->G()V

    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->r:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method

.method public static g()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method static synthetic h(Lcom/aadhk/restpos/TakeOrderActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/TakeOrderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    return v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/TakeOrderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    return v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/d/al;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/d/ag;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;
    .locals 8
    .parameter

    .prologue
    .line 65
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderItem;

    if-nez v1, :cond_1

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    move-object v3, v1

    goto :goto_1
.end method


# virtual methods
.method public final A()Lcom/aadhk/restpos/util/r;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method public final a()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 752
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 753
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 754
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 755
    const v2, 0x7f0f0016

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 756
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 757
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)V
    .locals 3
    .parameter

    .prologue
    .line 860
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/eb;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/eb;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Lcom/aadhk/restpos/bean/Order;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 861
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 862
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    if-eqz v0, :cond_0

    .line 394
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/al;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/ag;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

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
    .line 1127
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->B:Ljava/util/List;

    .line 1128
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
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
    .line 936
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v1, Lcom/aadhk/restpos/dy;

    invoke-direct {v1, p0, p1, p2}, Lcom/aadhk/restpos/dy;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    .line 958
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 959
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f090060

    .line 316
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 319
    const-string v2, "bundleOrdered"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    new-instance v2, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/dr;-><init>()V

    .line 321
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 322
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 323
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    if-eqz v1, :cond_0

    .line 324
    new-instance v1, Lcom/aadhk/restpos/d/al;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/al;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    .line 325
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 330
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 341
    :goto_1
    return-void

    .line 327
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ag;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    .line 328
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v2, "bundleOrdered"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    new-instance v2, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/dr;-><init>()V

    .line 336
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 338
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 339
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public final b(Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    .line 1152
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 1
    .parameter

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    return-void
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
    .line 1131
    iput-object p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    .line 1132
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 246
    iput-boolean p1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Z

    .line 247
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    if-nez v0, :cond_0

    .line 248
    if-eqz p1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->N:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->N:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()Lcom/aadhk/restpos/g/ad;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->G:Lcom/aadhk/restpos/g/ad;

    return-object v0
.end method

.method public final d()Lcom/aadhk/restpos/g/s;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->H:Lcom/aadhk/restpos/g/s;

    return-object v0
.end method

.method public final e()Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/dr;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->q:Lcom/aadhk/restpos/d/dr;

    .line 376
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->q:Lcom/aadhk/restpos/d/dr;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 377
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 378
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 383
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 407
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 408
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 409
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 411
    const v1, 0x7f080367

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 414
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 415
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 871
    instance-of v1, v0, Lcom/aadhk/restpos/d/dr;

    if-eqz v1, :cond_0

    .line 872
    check-cast v0, Lcom/aadhk/restpos/d/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/dr;->a(I)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 876
    instance-of v1, v0, Lcom/aadhk/restpos/d/dr;

    if-eqz v1, :cond_0

    .line 877
    check-cast v0, Lcom/aadhk/restpos/d/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/dr;->a(I)V

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    new-instance v0, Lcom/aadhk/product/library/a/e;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->S:Lcom/aadhk/product/library/a/c;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    .line 967
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 969
    :cond_0
    return-void
.end method

.method public final k()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public final l()Ljava/util/List;
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
    .line 1123
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method public final m()Lcom/aadhk/restpos/bean/Customer;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method public final n()Ljava/util/List;
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
    .line 1143
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const v4, 0x7f080243

    .line 1109
    iget v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/d;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/ea;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/ea;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 1110
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/d;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/ds;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/ds;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const v2, 0x7f090060

    .line 656
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->K:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 657
    new-instance v0, Lcom/aadhk/restpos/c/ap;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ap;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/dr;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/dr;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ap;->show()V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/aadhk/restpos/d/al;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/al;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->B()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ag;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->P:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 661
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->C()V

    goto :goto_0

    .line 662
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->M:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 663
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ef;

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/restpos/ef;-><init>(Lcom/aadhk/restpos/TakeOrderActivity;J)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 664
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 665
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->O:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 666
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->D()V

    goto :goto_0

    .line 667
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 668
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->E()V

    goto :goto_0

    .line 669
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->N:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 670
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->F()V

    goto :goto_0

    .line 671
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 672
    iget-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    if-eqz v0, :cond_9

    .line 673
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/al;->a()V

    goto :goto_0

    .line 675
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ag;->a()V

    goto :goto_0

    .line 677
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f0018

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f09005f

    const/16 v4, 0x8

    const/4 v1, 0x0

    const v3, 0x7f090060

    .line 97
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 99
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->setContentView(I)V

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "prefOrderStyle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    .line 102
    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    .line 104
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    const-string v2, "bundleOrder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    const-string v2, "bundleOrdered"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Z

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    const-string v2, "bundleCustomer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/bean/Customer;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    const-string v2, "bundleOrderType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->C:I

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v0, "bundleOrder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    .line 112
    const-string v0, "bundleCustomer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/bean/Customer;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 118
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/e/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->r:Lcom/aadhk/restpos/e/g;

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->f:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->f:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/aadhk/restpos/g/ad;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->G:Lcom/aadhk/restpos/g/ad;

    .line 124
    new-instance v0, Lcom/aadhk/restpos/g/s;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->H:Lcom/aadhk/restpos/g/s;

    .line 125
    new-instance v0, Lcom/aadhk/restpos/g/h;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->I:Lcom/aadhk/restpos/g/h;

    .line 126
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->s:Ljava/util/List;

    .line 127
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->t:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->u:Ljava/util/List;

    .line 132
    :cond_2
    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->K:Landroid/widget/Button;

    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->M:Landroid/widget/Button;

    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->N:Landroid/widget/Button;

    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->O:Landroid/widget/Button;

    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->P:Landroid/widget/Button;

    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TakeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->N:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->O:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->Q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/dr;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/aadhk/restpos/d/al;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/al;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->J:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->R:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    return-void

    :cond_3
    move v0, v1

    .line 103
    goto/16 :goto_0

    .line 133
    :cond_4
    new-instance v1, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ag;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/dr;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/TakeOrderActivity;->A:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->D:Z

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Z)V

    goto :goto_2

    :cond_6
    iget-boolean v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->o:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/aadhk/restpos/d/al;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/al;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->E:Lcom/aadhk/restpos/d/al;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_3
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->B()V

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ag;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->F:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->G:Lcom/aadhk/restpos/g/ad;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 1170
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->H:Lcom/aadhk/restpos/g/s;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 1171
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 1172
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 761
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090320

    if-ne v1, v2, :cond_0

    .line 762
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 763
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 764
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 765
    const-string v3, "bundleOrder"

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 766
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 767
    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 769
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    .line 790
    :goto_0
    return v0

    .line 771
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09030e

    if-ne v1, v2, :cond_1

    .line 772
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 773
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 774
    const-string v3, "bundleSplitType"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 775
    const-string v3, "bundleOrder"

    iget-object v4, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 776
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 777
    const-class v2, Lcom/aadhk/restpos/SplitBillActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 779
    invoke-virtual {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->finish()V

    goto :goto_0

    .line 781
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090089

    if-ne v0, v1, :cond_3

    .line 782
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->F()V

    .line 790
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 783
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09008a

    if-ne v0, v1, :cond_4

    .line 784
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->C()V

    goto :goto_1

    .line 785
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090088

    if-ne v0, v1, :cond_5

    .line 786
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->D()V

    goto :goto_1

    .line 787
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090085

    if-ne v0, v1, :cond_2

    .line 788
    invoke-direct {p0}, Lcom/aadhk/restpos/TakeOrderActivity;->E()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 1114
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 1115
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "prefSessionStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;J)V

    .line 1116
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    const-string v0, "bundleOrder"

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->z:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    const-string v0, "bundleCustomer"

    iget-object v1, p0, Lcom/aadhk/restpos/TakeOrderActivity;->v:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Lcom/aadhk/restpos/bean/RolePermission;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    return-object v0
.end method

.method public final z()Lcom/aadhk/restpos/g/h;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/aadhk/restpos/TakeOrderActivity;->I:Lcom/aadhk/restpos/g/h;

    return-object v0
.end method
