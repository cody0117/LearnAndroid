.class public final Lcom/aadhk/restpos/c/ai;
.super Lcom/aadhk/restpos/c/br;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/CheckBox;

.field private l:Lcom/aadhk/restpos/bean/Company;

.field private m:Lcom/aadhk/restpos/c/ak;

.field private n:Lcom/aadhk/restpos/bean/Company;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Company;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 35
    const v0, 0x7f03003f

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/br;-><init>(Landroid/content/Context;I)V

    .line 36
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->setTitle(I)V

    .line 37
    iput-object p2, p0, Lcom/aadhk/restpos/c/ai;->l:Lcom/aadhk/restpos/bean/Company;

    .line 39
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->e:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->f:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->g:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->h:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0b00e4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->i:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->k:Landroid/widget/CheckBox;

    .line 51
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/aj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/aj;-><init>(Lcom/aadhk/restpos/c/ai;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ai;->n:Lcom/aadhk/restpos/bean/Company;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ai;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->i:Landroid/widget/TextView;

    const v1, 0x7f090187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ai;->n:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->i:Landroid/widget/TextView;

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/aadhk/restpos/c/ai;->m:Lcom/aadhk/restpos/c/ak;

    .line 118
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->i:Landroid/widget/TextView;

    const v1, 0x7f090187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->i:Landroid/widget/TextView;

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ai;->a:Landroid/content/res/Resources;

    const v2, 0x7f0901f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->m:Lcom/aadhk/restpos/c/ak;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/ai;->l:Lcom/aadhk/restpos/bean/Company;

    iget-object v2, p0, Lcom/aadhk/restpos/c/ai;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Company;->setIncludeService(Z)V

    iget-object v1, p0, Lcom/aadhk/restpos/c/ai;->l:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Company;->setServiceFee(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->m:Lcom/aadhk/restpos/c/ak;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ai;->l:Lcom/aadhk/restpos/bean/Company;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/ak;->a()V

    :cond_3
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ai;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 86
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ai;->dismiss()V

    goto :goto_0

    .line 87
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/ai;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
