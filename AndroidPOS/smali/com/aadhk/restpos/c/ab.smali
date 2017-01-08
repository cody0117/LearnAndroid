.class public final Lcom/aadhk/restpos/c/ab;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/aadhk/restpos/c/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x7f030058

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 24
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->f:Landroid/widget/Button;

    .line 25
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->g:Landroid/widget/Button;

    .line 27
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    .line 28
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->j:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->k:Landroid/widget/EditText;

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ac;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ac;-><init>(Lcom/aadhk/restpos/c/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ad;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ad;-><init>(Lcom/aadhk/restpos/c/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ae;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ae;-><init>(Lcom/aadhk/restpos/c/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/af;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/aadhk/restpos/c/ab;->l:Lcom/aadhk/restpos/c/af;

    .line 97
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080085

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/aadhk/restpos/c/ab;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->c:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->c:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->c:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v3, p0, Lcom/aadhk/restpos/c/ab;->l:Lcom/aadhk/restpos/c/af;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/aadhk/restpos/c/ab;->l:Lcom/aadhk/restpos/c/af;

    invoke-interface {v3, v0, v1, v2}, Lcom/aadhk/restpos/c/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ab;->dismiss()V

    goto :goto_0

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ab;->dismiss()V

    goto :goto_0

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->l:Lcom/aadhk/restpos/c/af;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->l:Lcom/aadhk/restpos/c/af;

    .line 90
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ab;->dismiss()V

    goto :goto_0
.end method
