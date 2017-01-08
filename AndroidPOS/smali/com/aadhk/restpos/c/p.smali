.class public final Lcom/aadhk/restpos/c/p;
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
    .line 20
    const v0, 0x7f03003e

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object p1, p0, Lcom/aadhk/restpos/c/p;->e:Landroid/content/Context;

    .line 23
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/p;->f:Landroid/widget/Button;

    .line 24
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/p;->g:Landroid/widget/Button;

    .line 26
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/p;->i:Landroid/widget/EditText;

    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/p;->j:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/p;->h:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 53
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/p;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/p;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/p;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/p;->dismiss()V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/p;->dismiss()V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/p;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 64
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/p;->dismiss()V

    goto :goto_0
.end method
