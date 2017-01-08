.class public final Lcom/aadhk/restpos/c/cn;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Spinner;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Ljava/lang/CharSequence;

.field private n:[Ljava/lang/String;

.field private o:Lcom/aadhk/restpos/bean/PaymentMethod;

.field private p:Landroid/content/Context;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    const v0, 0x7f03005c

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/c/cn;->p:Landroid/content/Context;

    .line 35
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->f:Landroid/widget/Button;

    .line 36
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->g:Landroid/widget/Button;

    .line 38
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->i:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->j:Landroid/widget/Spinner;

    .line 40
    const v0, 0x7f090140

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->k:Landroid/widget/CheckBox;

    .line 41
    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->l:Landroid/widget/CheckBox;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->m:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->n:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->j:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    iget-object v3, p0, Lcom/aadhk/restpos/c/cn;->n:[Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->j:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/c/co;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/co;-><init>(Lcom/aadhk/restpos/c/cn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iput-object p2, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->j:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isOpenDrawer()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->l:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/cn;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/aadhk/restpos/c/cn;->q:I

    return p1
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cn;->h:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0802da

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->f:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 102
    const-string v2, ""

    iget-object v3, p0, Lcom/aadhk/restpos/c/cn;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget-object v3, p0, Lcom/aadhk/restpos/c/cn;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/PaymentMethod;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget v3, p0, Lcom/aadhk/restpos/c/cn;->q:I

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/PaymentMethod;->setType(I)V

    .line 107
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget-object v3, p0, Lcom/aadhk/restpos/c/cn;->k:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/PaymentMethod;->setOpenDrawer(Z)V

    .line 108
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->setBeDefault(Z)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cn;->dismiss()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->l:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->p:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cn;->dismiss()V

    goto :goto_0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->o:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cn;->p:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/cn;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 122
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cn;->dismiss()V

    goto/16 :goto_0
.end method
