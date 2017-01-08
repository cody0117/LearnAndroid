.class public final Lcom/aadhk/restpos/c/dn;
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

.field private k:Ljava/lang/CharSequence;

.field private l:Lcom/aadhk/restpos/c/do;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x7f030068

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 24
    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dn;->h:Landroid/widget/Button;

    .line 25
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dn;->f:Landroid/widget/Button;

    .line 26
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dn;->g:Landroid/widget/Button;

    .line 28
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dn;->i:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dn;->j:Landroid/widget/EditText;

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/dn;->k:Ljava/lang/CharSequence;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/do;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/aadhk/restpos/c/dn;->l:Lcom/aadhk/restpos/c/do;

    .line 62
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->l:Lcom/aadhk/restpos/c/do;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->l:Lcom/aadhk/restpos/c/do;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/do;->a()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dn;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dn;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->l:Lcom/aadhk/restpos/c/do;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->l:Lcom/aadhk/restpos/c/do;

    .line 53
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dn;->dismiss()V

    goto :goto_0

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/dn;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dn;->dismiss()V

    goto :goto_0
.end method
