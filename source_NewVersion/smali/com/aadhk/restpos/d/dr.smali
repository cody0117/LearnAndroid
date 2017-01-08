.class public final Lcom/aadhk/restpos/d/dr;
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

.field private H:Landroid/database/sqlite/SQLiteDatabase;

.field private I:Lcom/aadhk/restpos/e/f;

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

.field private N:Lcom/aadhk/restpos/b/m;

.field private O:Lcom/aadhk/restpos/b/e;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:Z

.field private T:Lcom/aadhk/restpos/bean/Order;

.field private U:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private V:Lcom/aadhk/restpos/bean/RolePermission;

.field a:Lcom/aadhk/product/library/a/b;

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

    .line 236
    new-instance v0, Lcom/aadhk/restpos/d/du;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/du;-><init>(Lcom/aadhk/restpos/d/dr;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->a:Lcom/aadhk/product/library/a/b;

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 223
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 224
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v1, Lcom/aadhk/restpos/d/dt;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/dt;-><init>(Lcom/aadhk/restpos/d/dr;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 233
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dr;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dr;->a()V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method private b()V
    .locals 11

    .prologue
    .line 358
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 360
    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 361
    const v1, 0x7f0b012c

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 362
    const v2, 0x7f0b0168

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 363
    const v3, 0x7f0b0207

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 364
    const v4, 0x7f0b0208

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 365
    const v5, 0x7f0b0206

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 367
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

    .line 368
    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v8, v9, v10}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmpl-double v1, v1, v8

    if-lez v1, :cond_0

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    const v1, 0x7f090319

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 375
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 379
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/b/m;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->N:Lcom/aadhk/restpos/b/m;

    return-object v0
.end method

.method private c()V
    .locals 17

    .prologue
    .line 382
    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/dr;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/dr;->L:Ljava/util/List;

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

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/dr;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 391
    const v1, 0x7f0b012c

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 392
    const v2, 0x7f0b0144

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    const v3, 0x7f0b00d3

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 394
    const v4, 0x7f0b010e

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 395
    const v6, 0x7f0b0145

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 397
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 399
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090273

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 404
    :goto_1
    const-string v8, "-"

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    .line 409
    :goto_2
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aadhk/restpos/d/dr;->R:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v2, v7, v8, v3}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDisName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    :goto_3
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 423
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/d/dr;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f030082

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 425
    const v2, 0x7f0b012c

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 426
    const v3, 0x7f0b0144

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 427
    const v4, 0x7f0b00d3

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 428
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 429
    const-string v7, " +"

    .line 434
    :goto_5
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_4

    .line 435
    const-string v8, "-"

    .line 439
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 402
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

    const v8, 0x7f090273

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

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

    .line 406
    :cond_1
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    .line 407
    move-object/from16 v0, p0

    iget v7, v0, Lcom/aadhk/restpos/d/dr;->R:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v7, v11, v12, v13}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 418
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 431
    :cond_3
    const-string v7, " -"

    goto/16 :goto_5

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aadhk/restpos/d/dr;->R:I

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v8, v13, v14, v15}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 445
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/dr;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 447
    :cond_6
    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/ReceiptListActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->U:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->K:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/dr;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->L:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->I:Lcom/aadhk/restpos/e/f;

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

    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->P:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->o()Ljava/util/Map;

    move-result-object v0

    .line 142
    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->V:Lcom/aadhk/restpos/bean/RolePermission;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/dr;->R:I

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->S:Z

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->H:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->d()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->M:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->L:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCashierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->P:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->H:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    new-instance v1, Lcom/aadhk/restpos/b/m;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->H:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/dr;->N:Lcom/aadhk/restpos/b/m;

    .line 169
    new-instance v1, Lcom/aadhk/restpos/b/e;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->H:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/dr;->O:Lcom/aadhk/restpos/b/e;

    .line 171
    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->O:Lcom/aadhk/restpos/b/e;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/e;->a(J)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/dr;->K:Lcom/aadhk/restpos/bean/Customer;

    .line 175
    :cond_0
    invoke-virtual {v0, v10}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->U:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->U:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->E:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->V:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->G:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->K:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->K:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->A:Landroid/widget/TextView;

    const v1, 0x7f0901e5

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->S:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_b

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->S:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

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

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->S:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

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

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getStatus()I

    move-result v0

    if-ne v0, v10, :cond_5

    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

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

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->S:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902bb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->s:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->S:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902bb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->u:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->v:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/dr;->R:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/dr;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_a
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dr;->c()V

    .line 186
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dr;->b()V

    .line 187
    return-void

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v10, :cond_a

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->A:Landroid/widget/TextView;

    const v1, 0x7f0901e4

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 452
    check-cast p1, Lcom/aadhk/restpos/ReceiptListActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    .line 453
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->E:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 193
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->a:Lcom/aadhk/product/library/a/b;

    const v3, 0x7f090177

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/dr;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 195
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {v0, v4}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    const v1, 0x7f0901f4

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->F:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->J:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/ReceiptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->I:Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->U:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dr;->T:Lcom/aadhk/restpos/bean/Order;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dr;->L:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;Ljava/lang/String;Z)V

    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->G:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->V:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_5

    .line 207
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dr;->a()V

    goto :goto_0

    .line 209
    :cond_5
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v1, Lcom/aadhk/restpos/d/ds;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ds;-><init>(Lcom/aadhk/restpos/d/dr;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 216
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/view/LayoutInflater;

    .line 84
    new-instance v0, Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dr;->d:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->I:Lcom/aadhk/restpos/e/f;

    .line 85
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const v0, 0x7f030080

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->e:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->f:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->g:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->h:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->i:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->w:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->x:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->D:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->y:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->m:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->n:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->k:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->l:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->o:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->p:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->q:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->r:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->z:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->s:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->t:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->u:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->v:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->A:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->B:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->C:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->E:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->F:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->G:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/view/View;

    return-object v0
.end method
