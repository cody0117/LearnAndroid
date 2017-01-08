.class public final Lcom/aadhk/restpos/d/fp;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Z

.field private K:Z

.field private L:Lcom/aadhk/restpos/util/r;

.field private M:Ljava/lang/String;

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

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const v11, 0x7f080319

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->h()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getCashierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/fp;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/fp;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v4}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->M:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->C:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fp;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->m()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    iget-object v2, p0, Lcom/aadhk/restpos/d/fp;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/aadhk/restpos/d/fp;->B:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->t:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getAmount()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    if-ne v1, v10, :cond_4

    .line 146
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->D:Landroid/widget/TextView;

    const v2, 0x7f080224

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_3
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_6

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->i:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_4
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_8

    .line 163
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->r:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 166
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_5
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_9

    .line 176
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_6
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_a

    .line 184
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->k:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_7
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_b

    .line 191
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->l:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_8
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_c

    .line 199
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->p:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :goto_9
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_d

    .line 206
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->q:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_a
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_e

    .line 213
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f090206

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/aadhk/restpos/d/fp;->u:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->v:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_b
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_f

    .line 222
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f090209

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/aadhk/restpos/d/fp;->w:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->x:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v3

    iget-object v5, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_c
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/fp;->K:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v1

    cmpl-double v1, v1, v8

    if-lez v1, :cond_10

    .line 231
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f09020c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/aadhk/restpos/d/fp;->y:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->z:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_d
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 148
    :cond_4
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 149
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->D:Landroid/widget/TextView;

    const v2, 0x7f080223

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 159
    :cond_6
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 169
    :cond_7
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 172
    :cond_8
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 180
    :cond_9
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 188
    :cond_a
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 195
    :cond_b
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 202
    :cond_c
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 209
    :cond_d
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 218
    :cond_e
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f090206

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 227
    :cond_f
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v2, 0x7f090209

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 236
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d
.end method

.method public final b()V
    .locals 11

    .prologue
    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->h()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderPayment;

    .line 244
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 245
    const v1, 0x7f090171

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    const v2, 0x7f0901b7

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 247
    const v3, 0x7f09025d

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 248
    const v4, 0x7f09025e

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 249
    const v5, 0x7f09025c

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 251
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

    .line 252
    iget v1, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getPaid()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v1, v8, v9, v10}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmpl-double v1, v1, v8

    if-lez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    const v1, 0x7f080379

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget v1, p0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderPayment;->getChangeAmt()D

    move-result-wide v2

    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 259
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 263
    :cond_1
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 18
    .parameter

    .prologue
    .line 98
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->y()Lcom/aadhk/restpos/util/r;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/aadhk/restpos/d/fp;->L:Lcom/aadhk/restpos/util/r;

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->L:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->l()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/aadhk/restpos/d/fp;->J:Z

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    .line 104
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aadhk/restpos/d/fp;->I:I

    .line 105
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/aadhk/restpos/d/fp;->K:Z

    .line 106
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/aadhk/restpos/d/fp;->M:Ljava/lang/String;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/aadhk/restpos/d/fp;->a()V

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aadhk/restpos/d/fp;->J:Z

    if-eqz v1, :cond_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030099

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v1, 0x7f090171

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09018a

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900f3

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901b5

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f09018c

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

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

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v8, "-"

    move-object/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v17

    :goto_2
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

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

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/d/fp;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f03009a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v2, 0x7f090171

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09018a

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900f3

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const-string v7, "+"

    :goto_5
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_6

    const-string v8, "-"

    :goto_6
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_2
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

    invoke-virtual {v0, v8}, Lcom/aadhk/restpos/d/fp;->getString(I)Ljava/lang/String;

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

    :cond_3
    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v7, v11, v12, v13}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    const-string v7, "-"

    goto/16 :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aadhk/restpos/d/fp;->I:I

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v13

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/d/fp;->H:Ljava/lang/String;

    invoke-static {v8, v13, v14, v15}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/d/fp;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/aadhk/restpos/d/fp;->b()V

    .line 110
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->m()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->G:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/aadhk/restpos/d/fp;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->G:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 353
    check-cast p1, Lcom/aadhk/restpos/PaymentActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    .line 354
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->c:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->a:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const v0, 0x7f03008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->d:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->e:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->f:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->g:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->h:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->A:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->B:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->G:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->C:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->i:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->m:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->n:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->o:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->j:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->k:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->l:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->p:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->q:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->r:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->s:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->t:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->u:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->v:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->w:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->x:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->y:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f09020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->z:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->D:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f0901f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->E:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fp;->F:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/fp;->b:Landroid/view/View;

    return-object v0
.end method
