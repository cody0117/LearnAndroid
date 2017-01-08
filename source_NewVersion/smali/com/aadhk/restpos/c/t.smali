.class public final Lcom/aadhk/restpos/c/t;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/RadioButton;

.field private o:Lcom/aadhk/restpos/bean/Modifier;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Modifier;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 32
    const v0, 0x7f030038

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 33
    iput p3, p0, Lcom/aadhk/restpos/c/t;->p:I

    .line 34
    if-nez p2, :cond_0

    .line 35
    new-instance v0, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    .line 39
    :goto_0
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->m:Landroid/widget/RadioButton;

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/t;->n:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/aadhk/restpos/f/e;

    iget v3, p0, Lcom/aadhk/restpos/c/t;->p:I

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/f/e;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 41
    :goto_1
    return-void

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    goto/16 :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f090055

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->f:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->g:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->h:Landroid/widget/Button;

    if-ne p1, v2, :cond_7

    .line 50
    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/t;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/t;->dismiss()V

    goto :goto_0

    :cond_5
    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aadhk/restpos/c/t;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->o:Lcom/aadhk/restpos/bean/Modifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    goto :goto_2

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    :cond_8
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/t;->dismiss()V

    goto/16 :goto_0

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 54
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/t;->dismiss()V

    goto/16 :goto_0

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    if-ne p1, v0, :cond_b

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_0

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/t;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method
