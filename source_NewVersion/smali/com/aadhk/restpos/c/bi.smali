.class public final Lcom/aadhk/restpos/c/bi;
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

.field private l:Ljava/lang/CharSequence;

.field private m:[Ljava/lang/String;

.field private n:Lcom/aadhk/restpos/bean/PaymentMethod;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    const v0, 0x7f03004c

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 35
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->f:Landroid/widget/Button;

    .line 36
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->g:Landroid/widget/Button;

    .line 38
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->j:Landroid/widget/Spinner;

    .line 40
    const v0, 0x7f0b00fc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->k:Landroid/widget/CheckBox;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->c:Landroid/content/res/Resources;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->l:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->m:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->j:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    iget-object v3, p0, Lcom/aadhk/restpos/c/bi;->m:[Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->j:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/c/bj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bj;-><init>(Lcom/aadhk/restpos/c/bi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iput-object p2, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->j:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isOpenDrawer()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bi;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/aadhk/restpos/c/bi;->o:I

    return p1
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bi;->h:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 90
    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->setName(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget v1, p0, Lcom/aadhk/restpos/c/bi;->o:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->setType(I)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->setOpenDrawer(Z)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bi;->n:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bi;->dismiss()V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bi;->dismiss()V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 104
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bi;->dismiss()V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/bi;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
