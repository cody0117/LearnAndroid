.class public final Lcom/aadhk/restpos/c/o;
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
    .line 27
    const v0, 0x7f03003d

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/c/o;->f:Lcom/aadhk/restpos/DiscountActivity;

    .line 29
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->g:Landroid/widget/Button;

    .line 30
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->h:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->j:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->k:Landroid/widget/ToggleButton;

    .line 34
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->l:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Lcom/aadhk/restpos/bean/Discount;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Discount;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Discount;->setPercentage(Z)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->j:Landroid/widget/TextView;

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/p;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->k:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    const v1, 0x7f080364

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 62
    :goto_2
    return-void

    .line 46
    :cond_0
    iput-object p2, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/aadhk/restpos/DiscountActivity;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    const v1, 0x7f080363

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_2
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/o;->i:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->k:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->j:Landroid/widget/TextView;

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    const v2, 0x7f080364

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Discount;->setPercentage(Z)V

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/c/o;->f:Lcom/aadhk/restpos/DiscountActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/DiscountActivity;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    const v2, 0x7f080363

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->g:Landroid/widget/Button;

    if-ne p1, v1, :cond_7

    .line 96
    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/util/p;->d(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, ""

    iget-object v4, p0, Lcom/aadhk/restpos/c/o;->l:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/o;->c:Landroid/content/res/Resources;

    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Discount;->setReason(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/util/p;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Discount;->setAmount(D)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/o;->dismiss()V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v3

    if-eqz v3, :cond_5

    cmpg-double v3, v1, v5

    if-lez v3, :cond_4

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/o;->c:Landroid/content/res/Resources;

    const v3, 0x7f0802eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/aadhk/restpos/c/o;->n:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v3

    if-nez v3, :cond_6

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/c/o;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/o;->c:Landroid/content/res/Resources;

    const v3, 0x7f0802ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/o;->dismiss()V

    goto/16 :goto_1

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/c/o;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 109
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/o;->dismiss()V

    goto/16 :goto_1
.end method
