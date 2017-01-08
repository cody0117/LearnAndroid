.class public final Lcom/aadhk/restpos/c/k;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Lcom/aadhk/restpos/c/m;

.field private f:Lcom/aadhk/restpos/c/l;

.field private g:Lcom/aadhk/restpos/c/n;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private final n:I

.field private o:Lcom/aadhk/restpos/bean/Currency;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Currency;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const v0, 0x7f030036

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 27
    iput p3, p0, Lcom/aadhk/restpos/c/k;->n:I

    .line 28
    iput-object p2, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    .line 30
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->k:Landroid/widget/EditText;

    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->l:Landroid/widget/EditText;

    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->m:Landroid/widget/EditText;

    const/4 v0, 0x2

    iget v1, p0, Lcom/aadhk/restpos/c/k;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Currency;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Currency;->getSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Currency;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/bean/Currency;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Currency;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    const v3, 0x7f080085

    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x1

    .line 64
    iget-object v2, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Currency;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/k;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Currency;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/k;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Currency;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/k;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/l;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aadhk/restpos/c/k;->f:Lcom/aadhk/restpos/c/l;

    .line 130
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/c/m;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/aadhk/restpos/c/k;->e:Lcom/aadhk/restpos/c/m;

    .line 122
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/c/n;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/aadhk/restpos/c/k;->g:Lcom/aadhk/restpos/c/n;

    .line 138
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Currency;->setCode(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Currency;->setSign(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Currency;->setDesc(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x2

    iget v1, p0, Lcom/aadhk/restpos/c/k;->n:I

    if-ne v0, v1, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/aadhk/restpos/c/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->g:Lcom/aadhk/restpos/c/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->g:Lcom/aadhk/restpos/c/n;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/n;->a(Lcom/aadhk/restpos/bean/Currency;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/k;->dismiss()V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/aadhk/restpos/c/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->f:Lcom/aadhk/restpos/c/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->f:Lcom/aadhk/restpos/c/l;

    iget-object v1, p0, Lcom/aadhk/restpos/c/k;->o:Lcom/aadhk/restpos/bean/Currency;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/c/l;->a(Lcom/aadhk/restpos/bean/Currency;)V

    :cond_3
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/k;->dismiss()V

    goto :goto_0

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->e:Lcom/aadhk/restpos/c/m;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->e:Lcom/aadhk/restpos/c/m;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/m;->a()V

    :cond_5
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/k;->dismiss()V

    goto :goto_0

    .line 90
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/k;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/k;->dismiss()V

    goto :goto_0
.end method
