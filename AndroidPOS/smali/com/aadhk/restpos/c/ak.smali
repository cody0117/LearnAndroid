.class public final Lcom/aadhk/restpos/c/ak;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/EditText;

.field private k:Ljava/lang/CharSequence;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    const v0, 0x7f03004e

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/c/ak;->l:Z

    .line 28
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ak;->f:Landroid/widget/Button;

    .line 29
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ak;->g:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    .line 32
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ak;->h:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ak;->i:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/al;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/al;-><init>(Lcom/aadhk/restpos/c/ak;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ak;->k:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    const v1, 0x7f080369

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 65
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 71
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 77
    :sswitch_2
    iget-boolean v0, p0, Lcom/aadhk/restpos/c/ak;->l:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ak;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ak;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ak;->dismiss()V

    goto :goto_0

    .line 85
    :sswitch_3
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ak;->dismiss()V

    goto :goto_0

    .line 88
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/ak;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 90
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ak;->dismiss()V

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x7f09005b -> :sswitch_3
        0x7f0900db -> :sswitch_2
        0x7f0900dc -> :sswitch_4
        0x7f0900f4 -> :sswitch_0
        0x7f0900f5 -> :sswitch_1
    .end sparse-switch
.end method
