.class public final Lcom/aadhk/restpos/c/ar;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Lcom/aadhk/restpos/util/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    const v0, 0x7f03006d

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/ar;->k:Lcom/aadhk/restpos/util/r;

    .line 27
    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    .line 28
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ar;->i:Landroid/widget/ImageButton;

    .line 29
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ar;->j:Landroid/widget/ImageButton;

    .line 30
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ar;->f:Landroid/widget/Button;

    .line 31
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ar;->g:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->c:Landroid/content/res/Resources;

    const v2, 0x7f0803b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/ar;->k:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->I()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->c:Landroid/content/res/Resources;

    const v2, 0x7f0803b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/ar;->k:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->J()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->c:Landroid/content/res/Resources;

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ar;->dismiss()V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ar;->dismiss()V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->i:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->j:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/c/ar;->h:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
