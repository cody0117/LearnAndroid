.class public final Lcom/aadhk/restpos/c/af;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Ljava/lang/CharSequence;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x7f03005a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/restpos/c/af;->k:Z

    .line 25
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/af;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/af;->f:Landroid/widget/Button;

    .line 26
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/af;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/af;->g:Landroid/widget/Button;

    .line 28
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/af;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ag;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ag;-><init>(Lcom/aadhk/restpos/c/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->c:Landroid/content/res/Resources;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/af;->j:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 66
    iget-boolean v0, p0, Lcom/aadhk/restpos/c/af;->k:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/af;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/af;->dismiss()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/af;->dismiss()V

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 77
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/af;->dismiss()V

    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/af;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
