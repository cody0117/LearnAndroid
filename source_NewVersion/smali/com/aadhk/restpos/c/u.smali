.class public final Lcom/aadhk/restpos/c/u;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Lcom/aadhk/restpos/DiscountActivity;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ToggleButton;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Lcom/aadhk/restpos/bean/Discount;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/bean/Discount;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 27
    const v0, 0x7f030035

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/c/u;->f:Lcom/aadhk/restpos/DiscountActivity;

    .line 29
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->g:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->h:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/ToggleButton;

    .line 34
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    if-nez p2, :cond_0

    .line 47
    new-instance v0, Lcom/aadhk/restpos/bean/Discount;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Discount;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Discount;->setPer(Z)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/TextView;

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/j;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->isPer()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 61
    return-void

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/aadhk/restpos/DiscountActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/TextView;

    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    const v2, 0x7f090304

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Discount;->setPer(Z)V

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->f:Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/DiscountActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    const v2, 0x7f090303

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->g:Landroid/widget/Button;

    if-ne p1, v1, :cond_7

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/j;->d(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, ""

    iget-object v4, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->c:Landroid/content/res/Resources;

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Discount;->setReason(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/j;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Discount;->setAmount(D)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    goto :goto_1

    .line 95
    :cond_3
    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Discount;->isPer()Z

    move-result v3

    if-eqz v3, :cond_5

    cmpg-double v3, v1, v5

    if-lez v3, :cond_4

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->c:Landroid/content/res/Resources;

    const v3, 0x7f09028c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Discount;->isPer()Z

    move-result v3

    if-nez v3, :cond_6

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->c:Landroid/content/res/Resources;

    const v3, 0x7f09028d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    goto/16 :goto_1

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 108
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    goto/16 :goto_1
.end method
