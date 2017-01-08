.class public final Lcom/aadhk/restpos/c/q;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Lcom/aadhk/restpos/c/r;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Lcom/aadhk/restpos/bean/Item;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Item;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const v0, 0x7f03004f

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p2, p0, Lcom/aadhk/restpos/c/q;->n:Lcom/aadhk/restpos/bean/Item;

    .line 29
    iput p3, p0, Lcom/aadhk/restpos/c/q;->o:I

    .line 31
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->e:Landroid/widget/Button;

    .line 34
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->f:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0900fa

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->m:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->g:Landroid/widget/ImageButton;

    .line 38
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->h:Landroid/widget/ImageButton;

    .line 39
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->i:Landroid/widget/ImageButton;

    .line 40
    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/c/q;->j:Landroid/widget/ImageButton;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->m:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/r;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aadhk/restpos/c/q;->k:Lcom/aadhk/restpos/c/r;

    .line 55
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    iget-object v2, p0, Lcom/aadhk/restpos/c/q;->g:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/q;->h:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/c/q;->i:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->m:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/c/q;->j:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_4

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->m:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/aadhk/restpos/c/q;->e:Landroid/widget/Button;

    if-ne p1, v2, :cond_8

    .line 94
    iget-object v2, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/aadhk/restpos/c/q;->m:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aadhk/restpos/c/q;->a:Landroid/content/res/Resources;

    const v5, 0x7f080085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->k:Lcom/aadhk/restpos/c/r;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->k:Lcom/aadhk/restpos/c/r;

    invoke-interface {v0, v2, v3}, Lcom/aadhk/restpos/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/q;->dismiss()V

    goto :goto_0

    .line 96
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/c/q;->m:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/aadhk/restpos/c/q;->a:Landroid/content/res/Resources;

    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/aadhk/restpos/c/q;->n:Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Item;->isStopSaleZeroQty()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/aadhk/restpos/c/q;->o:I

    if-le v4, v5, :cond_7

    iget-object v4, p0, Lcom/aadhk/restpos/c/q;->l:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/aadhk/restpos/c/q;->a:Landroid/content/res/Resources;

    const v6, 0x7f080299

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/aadhk/restpos/c/q;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    .line 100
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/q;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/q;->dismiss()V

    goto/16 :goto_0
.end method
