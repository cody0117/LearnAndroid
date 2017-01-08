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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    const v0, 0x7f030049

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 23
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->f:Landroid/widget/Button;

    .line 24
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->g:Landroid/widget/Button;

    .line 26
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ac;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ac;-><init>(Lcom/aadhk/restpos/c/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->c:Landroid/content/res/Resources;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v1, "[a-zA-Z0-9-]*[0-9]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->c:Landroid/content/res/Resources;

    const v2, 0x7f0901f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/aadhk/restpos/c/ab;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ab;->dismiss()V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ab;->dismiss()V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 76
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ab;->dismiss()V

    goto :goto_0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/ab;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
