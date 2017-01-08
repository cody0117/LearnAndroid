.class public final Lcom/aadhk/restpos/c/bq;
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
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 32
    const v0, 0x7f030059

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/c/bq;->q:Lcom/aadhk/restpos/PayInOutActivity;

    .line 34
    iput-boolean v1, p0, Lcom/aadhk/restpos/c/bq;->n:Z

    .line 35
    iput p3, p0, Lcom/aadhk/restpos/c/bq;->p:I

    .line 37
    if-ne p3, v1, :cond_0

    .line 38
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->setTitle(I)V

    .line 43
    :goto_0
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->f:Landroid/widget/Button;

    .line 44
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->g:Landroid/widget/Button;

    .line 45
    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->i:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->j:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f090134

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->k:Landroid/widget/EditText;

    .line 48
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->l:Landroid/widget/EditText;

    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Lcom/aadhk/restpos/bean/CashRegister;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/CashRegister;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    .line 51
    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->r:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setDate(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTime(Ljava/lang/String;)V

    .line 58
    :goto_1
    invoke-virtual {p1}, Lcom/aadhk/restpos/PayInOutActivity;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->t:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/bq;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CashRegister;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/br;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/br;-><init>(Lcom/aadhk/restpos/c/bq;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->c:Landroid/content/res/Resources;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->m:Ljava/lang/CharSequence;

    .line 60
    return-void

    .line 40
    :cond_0
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->setTitle(I)V

    goto/16 :goto_0

    .line 55
    :cond_1
    iput-object p2, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    .line 56
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->r:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aadhk/restpos/c/bq;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bq;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aadhk/restpos/c/bq;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bq;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->k:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bq;->h:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/CashRegister;->setAmount(D)V

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setDate(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTime(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setNote(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    iget v1, p0, Lcom/aadhk/restpos/c/bq;->p:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/CashRegister;->setTranxType(I)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->o:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bq;->dismiss()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bq;->dismiss()V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 118
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bq;->dismiss()V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->j:Landroid/widget/EditText;

    if-ne p1, v0, :cond_5

    .line 121
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->q:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bq;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/aadhk/restpos/c/bs;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bs;-><init>(Lcom/aadhk/restpos/c/bq;)V

    iput-object v1, v0, Lcom/aadhk/product/library/b/e;->a:Lcom/aadhk/product/library/b/f;

    .line 130
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->k:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    .line 132
    new-instance v0, Lcom/aadhk/restpos/c/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->q:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bq;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/dr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/aadhk/restpos/c/bt;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bt;-><init>(Lcom/aadhk/restpos/c/bq;)V

    iput-object v1, v0, Lcom/aadhk/product/library/b/e;->a:Lcom/aadhk/product/library/b/f;

    .line 141
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dr;->show()V

    goto/16 :goto_0

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->l:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 143
    iget-boolean v0, p0, Lcom/aadhk/restpos/c/bq;->n:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
