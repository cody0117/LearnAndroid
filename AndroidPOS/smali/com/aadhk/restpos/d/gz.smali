.class public final Lcom/aadhk/restpos/d/gz;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/Button;

.field private H:Lcom/aadhk/restpos/g/v;

.field private I:Lcom/aadhk/restpos/e/g;

.field private J:Lcom/aadhk/restpos/bean/Company;

.field private K:Lcom/aadhk/restpos/bean/Customer;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/lang/String;

.field private O:I

.field private P:Z

.field private Q:Lcom/aadhk/restpos/bean/Order;

.field private R:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private S:Lcom/aadhk/restpos/bean/RolePermission;

.field a:Lcom/aadhk/product/library/a/c;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Lcom/aadhk/restpos/ReceiptListActivity;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 225
    new-instance v0, Lcom/aadhk/restpos/d/hc;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/hc;-><init>(Lcom/aadhk/restpos/d/gz;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->a:Lcom/aadhk/product/library/a/c;

    .line 477
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 212
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 213
    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v1, Lcom/aadhk/restpos/d/hb;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/hb;-><init>(Lcom/aadhk/restpos/d/gz;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 222
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gz;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gz;->a()V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/ReceiptListActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 8
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
    .line 249
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 250
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->L:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 255
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

    .line 256
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    .line 261
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

    .line 264
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderItem;

    .line 265
    if-nez v1, :cond_1

    .line 267
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    goto :goto_2

    .line 274
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    const-string v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_3

    .line 277
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 280
    :cond_4
    return-object v1

    :cond_5
    move-object v3, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->R:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method private c()V
    .locals 11

    .prologue
    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 388
    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 389
    const v1, 0x7f090171

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 390
    const v2, 0x7f0901b7

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 391
    const v3, 0x7f09025d

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 392
    const v4, 0x7f09025e

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 393
    const v5, 0x7f09025c

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaymentMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v8, v9, v10}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmpl-double v1, v1, v8

    if-lez v1, :cond_0

    .line 399
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    const v1, 0x7f080379

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 403
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 407
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method private d()V
    .locals 17

    .prologue
    .line 410
    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/gz;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/gz;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/aadhk/restpos/bean/OrderItem;

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/gz;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030099

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 419
    const v1, 0x7f090171

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 420
    const v2, 0x7f09018a

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 421
    const v3, 0x7f0900f3

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 422
    const v4, 0x7f0901b5

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 423
    const v6, 0x7f09018c

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 425
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 427
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0802d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 432
    :goto_1
    const-string v8, "-"

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    .line 437
    :goto_2
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aadhk/restpos/d/gz;->O:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v2, v7, v8, v3}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    :goto_3
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 451
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/d/gz;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f03009a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 453
    const v2, 0x7f090171

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 454
    const v3, 0x7f09018a

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 455
    const v4, 0x7f0900f3

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 456
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 457
    const-string v7, "+"

    .line 462
    :goto_5
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_4

    .line 463
    const-string v8, "-"

    .line 467
    :goto_6
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 430
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0802d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 434
    :cond_1
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    .line 435
    move-object/from16 v0, p0

    iget v7, v0, Lcom/aadhk/restpos/d/gz;->O:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v7, v11, v12, v13}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 446
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 459
    :cond_3
    const-string v7, "-"

    goto/16 :goto_5

    .line 465
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aadhk/restpos/d/gz;->O:I

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v8, v13, v14, v15}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 473
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/gz;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 475
    :cond_6
    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->K:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/gz;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gz;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->I:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/g/v;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->H:Lcom/aadhk/restpos/g/v;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->w()Ljava/util/Map;

    move-result-object v0

    .line 140
    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->S:Lcom/aadhk/restpos/bean/RolePermission;

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/gz;->O:I

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/gz;->P:Z

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->b()Lcom/aadhk/restpos/g/v;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->H:Lcom/aadhk/restpos/g/v;

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->M:Ljava/util/List;

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->L:Ljava/util/List;

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCashierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/ReceiptListActivity;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v3}, Lcom/aadhk/restpos/ReceiptListActivity;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->H:Lcom/aadhk/restpos/g/v;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/v;->b(J)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->K:Lcom/aadhk/restpos/bean/Customer;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->R:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->R:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->E:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->S:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->G:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->K:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->K:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->A:Landroid/widget/TextView;

    const v1, 0x7f080224

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/gz;->P:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_b

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/gz;->P:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/gz;->P:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getStatus()I

    move-result v0

    if-ne v0, v10, :cond_5

    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/gz;->P:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080319

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->s:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/gz;->P:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080319

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->u:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->v:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/gz;->O:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/gz;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_a
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gz;->d()V

    .line 178
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gz;->c()V

    .line 179
    return-void

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v10, :cond_a

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->A:Landroid/widget/TextView;

    const v1, 0x7f080223

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/gz;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 504
    check-cast p1, Lcom/aadhk/restpos/ReceiptListActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    .line 505
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->E:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 186
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    const v1, 0x7f080231

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->F:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/ReceiptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->I:Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->R:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    invoke-direct {p0}, Lcom/aadhk/restpos/d/gz;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;Ljava/lang/String;Z)V

    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->G:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->S:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gz;->a()V

    goto :goto_0

    .line 197
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v1, Lcom/aadhk/restpos/d/ha;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ha;-><init>(Lcom/aadhk/restpos/d/gz;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 204
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->b:Landroid/view/LayoutInflater;

    .line 81
    new-instance v0, Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gz;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->I:Lcom/aadhk/restpos/e/g;

    .line 83
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const-string v1, "bundleOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->Q:Lcom/aadhk/restpos/bean/Order;

    .line 87
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const v0, 0x7f030098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->e:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->f:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->g:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->h:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->i:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->w:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->x:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->D:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->y:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->j:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->m:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->n:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->k:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->l:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->o:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->p:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->q:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->r:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f09025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->z:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->s:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->t:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->u:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->v:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->A:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0901f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->B:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->C:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->E:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->F:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gz;->G:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/gz;->c:Landroid/view/View;

    return-object v0
.end method
