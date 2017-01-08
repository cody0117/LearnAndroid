.class public final Lcom/aadhk/restpos/c/cb;
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
    .line 24
    const v0, 0x7f030042

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 26
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cb;->f:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cb;->g:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cb;->h:Landroid/widget/Button;

    .line 29
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cb;->i:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/cc;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/cc;-><init>(Lcom/aadhk/restpos/c/cb;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->c:Landroid/content/res/Resources;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cb;->l:Ljava/lang/CharSequence;

    .line 52
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cb;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/c/cb;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/c/cb;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cb;->dismiss()V

    goto :goto_0

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 83
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cb;->dismiss()V

    goto :goto_0

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 87
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cb;->dismiss()V

    goto :goto_0

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/c/cb;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
