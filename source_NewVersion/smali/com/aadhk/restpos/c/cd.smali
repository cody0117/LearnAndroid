.class public final Lcom/aadhk/restpos/c/cd;
.super Lcom/aadhk/restpos/c/br;
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

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/CheckBox;

.field private n:Lcom/aadhk/restpos/bean/Company;

.field private o:Lcom/aadhk/restpos/c/cf;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 28
    const v0, 0x7f030059

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 29
    const v0, 0x7f090189

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->setTitle(I)V

    .line 30
    iput-object p2, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    .line 31
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    const v0, 0x7f0b0123

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/EditText;

    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/CheckBox;

    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ce;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ce;-><init>(Lcom/aadhk/restpos/c/cd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iput-boolean p3, p0, Lcom/aadhk/restpos/c/cd;->p:Z

    .line 34
    iput-boolean p4, p0, Lcom/aadhk/restpos/c/cd;->q:Z

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aadhk/restpos/c/cd;->o:Lcom/aadhk/restpos/c/cf;

    .line 201
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f09018d

    const/4 v8, 0x0

    const v7, 0x7f090055

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->e:Landroid/widget/Button;

    if-ne p1, v1, :cond_b

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->o:Lcom/aadhk/restpos/c/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->o:Lcom/aadhk/restpos/c/cf;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/cf;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cd;->dismiss()V

    .line 69
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/aadhk/restpos/c/cd;->p:Z

    if-eqz v6, :cond_9

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    :cond_9
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/aadhk/restpos/c/cd;->q:Z

    if-eqz v6, :cond_a

    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/aadhk/restpos/bean/Company;->setTax1(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setTax1Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Company;->setTax2(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Company;->setTax2Name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setIncludeTax(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/Company;->setTaxNumber(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 43
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cd;->dismiss()V

    goto/16 :goto_1

    .line 44
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    if-ne p1, v0, :cond_d

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_1

    .line 46
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    if-ne p1, v0, :cond_e

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_1

    .line 48
    :cond_e
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_f

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_1

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    if-ne p1, v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_1

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/EditText;

    if-ne p1, v0, :cond_11

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_1

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    .line 55
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 57
    if-eqz v0, :cond_12

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    const v1, 0x7f0902e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/TextView;

    const v2, 0x7f0902e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :goto_2
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_1

    .line 61
    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->a:Landroid/content/res/Resources;

    const v1, 0x7f0902e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
