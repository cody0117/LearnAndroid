.class public final Lcom/aadhk/restpos/c/r;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    const v0, 0x7f030036

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 29
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/r;->f:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/r;->g:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->c:Landroid/content/res/Resources;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/r;->j:Ljava/lang/CharSequence;

    .line 41
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/r;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/r;->h:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 61
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/r;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/r;->dismiss()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/r;->dismiss()V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/r;->dismiss()V

    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/r;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method