.class public final Lcom/aadhk/restpos/c/n;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Lcom/aadhk/restpos/c/p;

.field private f:Lcom/aadhk/restpos/c/o;

.field private g:Lcom/aadhk/restpos/c/q;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private final n:I

.field private o:Lcom/aadhk/product/library/bean/Currency;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/product/library/bean/Currency;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 26
    const v0, 0x7f03002e

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 27
    iput p3, p0, Lcom/aadhk/restpos/c/n;->n:I

    .line 28
    iput-object p2, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    .line 30
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/aadhk/restpos/c/n;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-virtual {v1}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-virtual {v1}, Lcom/aadhk/product/library/bean/Currency;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-virtual {v1}, Lcom/aadhk/product/library/bean/Currency;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/aadhk/product/library/bean/Currency;

    invoke-direct {v0}, Lcom/aadhk/product/library/bean/Currency;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    const v3, 0x7f090055

    const/4 v0, 0x0

    .line 70
    const/4 v1, 0x1

    .line 71
    iget-object v2, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-virtual {v2}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/n;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-virtual {v2}, Lcom/aadhk/product/library/bean/Currency;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/n;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-virtual {v2}, Lcom/aadhk/product/library/bean/Currency;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/n;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/o;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/aadhk/restpos/c/n;->f:Lcom/aadhk/restpos/c/o;

    .line 143
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/c/p;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/aadhk/restpos/c/n;->e:Lcom/aadhk/restpos/c/p;

    .line 135
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/c/q;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/aadhk/restpos/c/n;->g:Lcom/aadhk/restpos/c/q;

    .line 151
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/bean/Currency;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/bean/Currency;->b(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/bean/Currency;->c(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x2

    iget v1, p0, Lcom/aadhk/restpos/c/n;->n:I

    if-ne v0, v1, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/aadhk/restpos/c/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->g:Lcom/aadhk/restpos/c/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->g:Lcom/aadhk/restpos/c/q;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/q;->a(Lcom/aadhk/product/library/bean/Currency;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/n;->dismiss()V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/aadhk/restpos/c/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->f:Lcom/aadhk/restpos/c/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->f:Lcom/aadhk/restpos/c/o;

    iget-object v1, p0, Lcom/aadhk/restpos/c/n;->o:Lcom/aadhk/product/library/bean/Currency;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/o;->a(Lcom/aadhk/product/library/bean/Currency;)V

    :cond_3
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/n;->dismiss()V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->e:Lcom/aadhk/restpos/c/p;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->e:Lcom/aadhk/restpos/c/p;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/p;->a()V

    :cond_5
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/n;->dismiss()V

    goto :goto_0

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/n;->dismiss()V

    goto :goto_0

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    if-ne p1, v0, :cond_8

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    if-ne p1, v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/c/n;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
