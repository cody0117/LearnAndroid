.class public final Lcom/aadhk/restpos/c/s;
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

.field private k:Lcom/aadhk/restpos/bean/Note;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Note;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    const v0, 0x7f030037

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 24
    if-nez p2, :cond_0

    .line 25
    new-instance v0, Lcom/aadhk/restpos/bean/Note;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Note;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/Note;

    .line 29
    :goto_0
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->f:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->g:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Note;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->c:Landroid/content/res/Resources;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->j:Ljava/lang/CharSequence;

    .line 43
    return-void

    .line 27
    :cond_0
    iput-object p2, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/Note;

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 63
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/Note;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Note;->setName(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/Note;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Note;->setType(I)V

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/Note;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/s;->dismiss()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/s;->dismiss()V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 76
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/s;->dismiss()V

    goto :goto_0
.end method