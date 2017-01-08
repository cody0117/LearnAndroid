.class public final Lcom/aadhk/restpos/c/u;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/RadioButton;

.field private q:Landroid/widget/RadioButton;

.field private r:Lcom/aadhk/restpos/bean/Modifier;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Modifier;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 31
    const v0, 0x7f030041

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 32
    iput p3, p0, Lcom/aadhk/restpos/c/u;->s:I

    .line 33
    if-nez p2, :cond_0

    .line 34
    new-instance v0, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    .line 38
    :goto_0
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->p:Landroid/widget/RadioButton;

    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/u;->q:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/aadhk/restpos/util/g;

    iget v3, p0, Lcom/aadhk/restpos/c/u;->s:I

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/util/g;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/aadhk/restpos/util/g;

    iget v3, p0, Lcom/aadhk/restpos/c/u;->s:I

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/util/g;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getCost()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 40
    :goto_1
    return-void

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    goto/16 :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const v4, 0x7f080085

    const/4 v0, 0x0

    .line 44
    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->f:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->g:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->h:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->i:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_4

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 52
    :cond_4
    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->j:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 53
    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/Modifier;->setCost(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    goto/16 :goto_0

    :cond_7
    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->n:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/aadhk/restpos/c/u;->o:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/u;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->r:Lcom/aadhk/restpos/bean/Modifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    goto :goto_2

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->l:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    :cond_b
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    goto/16 :goto_0

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/c/u;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/u;->dismiss()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method
