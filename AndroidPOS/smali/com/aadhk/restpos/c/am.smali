.class public final Lcom/aadhk/restpos/c/am;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/CheckBox;

.field private r:Landroid/widget/CheckBox;

.field private s:Lcom/aadhk/restpos/bean/Company;

.field private t:Lcom/aadhk/restpos/c/ao;

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 28
    const v0, 0x7f030046

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 29
    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->setTitle(I)V

    .line 30
    iput-object p2, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    .line 31
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    const v0, 0x7f0900fd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/EditText;

    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/EditText;

    const v0, 0x7f090102

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->m:Landroid/widget/EditText;

    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->p:Landroid/widget/CheckBox;

    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->q:Landroid/widget/CheckBox;

    const v0, 0x7f090105

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->r:Landroid/widget/CheckBox;

    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/an;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/an;-><init>(Lcom/aadhk/restpos/c/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/TextView;

    const v1, 0x7f080344

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isServiceAfterTax()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->q:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isDeliveryAfterTax()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->r:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isDiscountAfterTax()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iput-boolean p3, p0, Lcom/aadhk/restpos/c/am;->u:Z

    .line 34
    iput-boolean p4, p0, Lcom/aadhk/restpos/c/am;->v:Z

    .line 35
    iput-boolean p5, p0, Lcom/aadhk/restpos/c/am;->w:Z

    .line 36
    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/TextView;

    const v1, 0x7f080345

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/aadhk/restpos/c/am;->t:Lcom/aadhk/restpos/c/ao;

    .line 270
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f0801c4

    const/4 v10, 0x0

    const v9, 0x7f080085

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->e:Landroid/widget/Button;

    if-ne p1, v1, :cond_18

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/c/am;->m:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->t:Lcom/aadhk/restpos/c/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->t:Lcom/aadhk/restpos/c/ao;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/ao;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/am;->dismiss()V

    .line 59
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->h:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_11
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_13
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_14
    iget-object v8, p0, Lcom/aadhk/restpos/c/am;->g:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-boolean v8, p0, Lcom/aadhk/restpos/c/am;->u:Z

    if-eqz v8, :cond_15

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    goto/16 :goto_0

    :cond_15
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-boolean v8, p0, Lcom/aadhk/restpos/c/am;->v:Z

    if-eqz v8, :cond_16

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    goto/16 :goto_0

    :cond_16
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-boolean v8, p0, Lcom/aadhk/restpos/c/am;->w:Z

    if-eqz v8, :cond_17

    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/aadhk/restpos/c/bo;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/aadhk/restpos/bean/Company;->setTax1(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setTax1Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Company;->setTax2(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Company;->setTax2Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v6}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Company;->setTax3(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/Company;->setTax3Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setItemPriceIncludeTax(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->p:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setServiceAfterTax(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->q:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setDeliveryAfterTax(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->r:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setDiscountAfterTax(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v7}, Lcom/aadhk/restpos/bean/Company;->setTaxNumber(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 42
    :cond_18
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_19

    .line 43
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/am;->dismiss()V

    goto/16 :goto_1

    .line 44
    :cond_19
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    .line 45
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 47
    if-eqz v0, :cond_1a

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    const v1, 0x7f080342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/TextView;

    const v2, 0x7f080344

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    :goto_2
    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    goto/16 :goto_1

    .line 51
    :cond_1a
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->a:Landroid/content/res/Resources;

    const v1, 0x7f080343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/TextView;

    const v2, 0x7f080345

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
