.class public final Lcom/aadhk/restpos/c/az;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Ljava/lang/CharSequence;

.field private n:Z

.field private o:Lcom/aadhk/restpos/bean/CashRegister;

.field private p:I

.field private q:Lcom/aadhk/restpos/PayInOutActivity;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 31
    const v0, 0x7f03004a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/aadhk/restpos/c/az;->q:Lcom/aadhk/restpos/PayInOutActivity;

    .line 33
    iput-boolean v3, p0, Lcom/aadhk/restpos/c/az;->n:Z

    .line 34
    iput p3, p0, Lcom/aadhk/restpos/c/az;->p:I

    .line 36
    if-ne p3, v3, :cond_0

    .line 37
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->setTitle(I)V

    .line 42
    :goto_0
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->f:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->g:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->j:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->k:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->l:Landroid/widget/EditText;

    .line 48
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Lcom/aadhk/restpos/bean/CashRegister;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/CashRegister;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    .line 50
    invoke-static {}, Lcom/aadhk/restpos/f/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->r:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setDate(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTime(Ljava/lang/String;)V

    .line 57
    :goto_1
    invoke-virtual {p1}, Lcom/aadhk/restpos/PayInOutActivity;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->t:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/az;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ba;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ba;-><init>(Lcom/aadhk/restpos/c/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->c:Landroid/content/res/Resources;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->m:Ljava/lang/CharSequence;

    .line 59
    return-void

    .line 39
    :cond_0
    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->setTitle(I)V

    goto/16 :goto_0

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    .line 55
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->r:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/az;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/az;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/aadhk/restpos/c/az;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/az;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/az;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/aadhk/restpos/c/az;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/az;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->k:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/az;->h:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/CashRegister;->setAmount(D)V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setDate(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTime(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setNote(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget v1, p0, Lcom/aadhk/restpos/c/az;->p:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTranxType(I)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/az;->dismiss()V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/az;->dismiss()V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 119
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/az;->dismiss()V

    goto :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->j:Landroid/widget/EditText;

    if-ne p1, v0, :cond_7

    .line 124
    new-instance v0, Lcom/aadhk/restpos/c/j;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->q:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/c/az;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/aadhk/restpos/c/bb;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bb;-><init>(Lcom/aadhk/restpos/c/az;)V

    iput-object v1, v0, Lcom/aadhk/product/library/b/e;->a:Lcom/aadhk/product/library/b/f;

    .line 133
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/j;->show()V

    goto/16 :goto_0

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->k:Landroid/widget/EditText;

    if-ne p1, v0, :cond_8

    .line 135
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->q:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/c/az;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/aadhk/restpos/c/bc;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bc;-><init>(Lcom/aadhk/restpos/c/az;)V

    iput-object v1, v0, Lcom/aadhk/product/library/b/e;->a:Lcom/aadhk/product/library/b/f;

    .line 144
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    goto/16 :goto_0

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->l:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 146
    iget-boolean v0, p0, Lcom/aadhk/restpos/c/az;->n:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/c/az;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/az;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
