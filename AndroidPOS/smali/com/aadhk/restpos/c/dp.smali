.class public final Lcom/aadhk/restpos/c/dp;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/EditText;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    const v0, 0x7f03004e

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 27
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dp;->f:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dp;->g:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dp;->h:Landroid/widget/Button;

    .line 30
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dp;->i:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/dp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/dq;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/dq;-><init>(Lcom/aadhk/restpos/c/dp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/dp;->l:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/dp;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/c/dp;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/c/dp;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dp;->dismiss()V

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 82
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dp;->dismiss()V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/dp;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 86
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/dp;->dismiss()V

    goto :goto_0
.end method
