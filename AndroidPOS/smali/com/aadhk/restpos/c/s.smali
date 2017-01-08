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

.field private k:Lcom/aadhk/restpos/bean/KitchenNote;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/KitchenNote;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x7f03003f

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 23
    if-nez p2, :cond_0

    .line 24
    new-instance v0, Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/KitchenNote;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/KitchenNote;

    .line 28
    :goto_0
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->f:Landroid/widget/Button;

    .line 29
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->g:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->j:Ljava/lang/CharSequence;

    .line 40
    return-void

    .line 26
    :cond_0
    iput-object p2, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/KitchenNote;

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 60
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/KitchenNote;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/KitchenNote;->setName(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/s;->k:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/s;->dismiss()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/s;->dismiss()V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/c/s;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/s;->dismiss()V

    goto :goto_0
.end method
