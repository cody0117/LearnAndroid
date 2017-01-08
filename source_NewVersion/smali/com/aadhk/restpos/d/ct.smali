.class public final Lcom/aadhk/restpos/d/ct;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Lcom/aadhk/restpos/bean/Order;

.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/View;

.field private c:Lcom/aadhk/restpos/PaymentActivity;

.field private d:Landroid/widget/TextView;

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

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private c()V
    .locals 17

    .prologue
    .line 244
    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/ct;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/ct;->C:Ljava/util/List;

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

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/ct;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 253
    const v1, 0x7f0b012c

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    const v2, 0x7f0b0144

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 255
    const v3, 0x7f0b00d3

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 256
    const v4, 0x7f0b010e

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 257
    const v6, 0x7f0b0145

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 259
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 260
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
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

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 266
    :goto_1
    const-string v8, "-"

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    .line 271
    :goto_2
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
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

    .line 273
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aadhk/restpos/d/ct;->G:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

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

    .line 277
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :goto_3
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/d/ct;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030082

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 287
    const v2, 0x7f0b012c

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 288
    const v3, 0x7f0b0144

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 289
    const v4, 0x7f0b00d3

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 290
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 291
    const-string v7, " +"

    .line 296
    :goto_5
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_4

    .line 297
    const-string v8, "-"

    .line 301
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

    .line 302
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

    .line 303
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 263
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

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

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

    .line 268
    :cond_1
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    .line 269
    move-object/from16 v0, p0

    iget v7, v0, Lcom/aadhk/restpos/d/ct;->G:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v7, v11, v12, v13}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 280
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 293
    :cond_3
    const-string v7, " -"

    goto/16 :goto_5

    .line 299
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aadhk/restpos/d/ct;->G:I

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v8, v13, v14, v15}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 307
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/ct;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 309
    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const v10, 0x7f0902bb

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->g()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-ne v0, v9, :cond_3

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->y:Landroid/widget/TextView;

    const v1, 0x7f0901e5

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ct;->I:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_5

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_4
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ct;->I:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_8

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

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

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_5
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ct;->I:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

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

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_a

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_7
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ct;->I:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v10}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->r:Landroid/widget/TextView;

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

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_8
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ct;->I:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {p0, v10}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->t:Landroid/widget/TextView;

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

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->u:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_9
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->y:Landroid/widget/TextView;

    const v1, 0x7f0901e4

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public final b()V
    .locals 11

    .prologue
    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 222
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 223
    const v1, 0x7f0b012c

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    const v2, 0x7f0b0168

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    const v3, 0x7f0b0207

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 226
    const v4, 0x7f0b0208

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 227
    const v5, 0x7f0b0206

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 229
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

    .line 230
    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v8, v9, v10}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmpl-double v1, v1, v8

    if-lez v1, :cond_0

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    const v1, 0x7f090319

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 237
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_1
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b019f

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/ct;->E:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ct;->H:Z

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/ct;->F:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/ct;->G:I

    .line 105
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aadhk/restpos/d/ct;->I:Z

    .line 107
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->e()Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    .line 108
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/ct;->D:Ljava/util/List;

    .line 109
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/ct;->C:Ljava/util/List;

    .line 111
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getCashierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ct;->J:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ct;->E:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->x:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ct;->a()V

    .line 124
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ct;->c()V

    .line 125
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ct;->b()V

    .line 126
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->g()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->B:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/aadhk/restpos/d/ct;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 327
    check-cast p1, Lcom/aadhk/restpos/PaymentActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    .line 328
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->a:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->d:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->e:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->f:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->g:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->h:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->v:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->w:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->B:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->x:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->i:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->l:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->m:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->j:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->k:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->n:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->o:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->p:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->q:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->r:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->s:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->t:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->u:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->y:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->z:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ct;->A:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/ct;->b:Landroid/view/View;

    return-object v0
.end method
