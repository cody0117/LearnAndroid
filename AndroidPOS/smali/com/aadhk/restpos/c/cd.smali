.class public final Lcom/aadhk/restpos/c/cd;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/aadhk/restpos/bean/Company;

.field private q:Lcom/aadhk/restpos/bean/Order;

.field private r:Ljava/lang/String;

.field private s:D

.field private t:Ljava/lang/String;

.field private u:D

.field private v:I

.field private w:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f090113

    .line 39
    const v0, 0x7f03004a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 40
    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->setTitle(I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->p:Lcom/aadhk/restpos/bean/Company;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->r:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/cd;->v:I

    .line 44
    iput-object p2, p0, Lcom/aadhk/restpos/c/cd;->q:Lcom/aadhk/restpos/bean/Order;

    .line 45
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    .line 46
    if-eqz p3, :cond_1

    .line 47
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    .line 51
    :cond_0
    :goto_0
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Landroid/widget/TextView;

    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090116

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->f:Landroid/widget/Button;

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/cd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ce;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ce;-><init>(Lcom/aadhk/restpos/c/cd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/cf;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/cf;-><init>(Lcom/aadhk/restpos/c/cd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/cg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/cg;-><init>(Lcom/aadhk/restpos/c/cd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->u:D

    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->u:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/cd;->w:D

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->s:D

    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->s:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/cd;->u:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/c/cd;->v:I

    iget-wide v2, p0, Lcom/aadhk/restpos/c/cd;->w:D

    iget-object v4, p0, Lcom/aadhk/restpos/c/cd;->r:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->b(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void

    .line 48
    :cond_1
    if-nez p4, :cond_0

    .line 49
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/cd;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/aadhk/restpos/c/cd;->u:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/cd;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/cd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/aadhk/restpos/c/cd;->t:Ljava/lang/String;

    return-object p1
.end method

.method private a(D)V
    .locals 4
    .parameter

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    iget v2, p0, Lcom/aadhk/restpos/c/cd;->v:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->u:D

    .line 185
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->u:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/cd;->w:D

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->s:D

    .line 186
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->s:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/cd;->t:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/cd;->u:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->u:D

    return-wide v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/cd;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/aadhk/restpos/c/cd;->s:D

    return-wide p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->w:D

    return-wide v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/aadhk/restpos/c/cd;->s:D

    return-wide v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/cd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/cd;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/c/cd;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/restpos/c/cd;->v:I

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f080318

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cd;->dismiss()V

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-wide v1, p0, Lcom/aadhk/restpos/c/cd;->s:D

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->a:Lcom/aadhk/product/library/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/cd;->dismiss()V

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/aadhk/restpos/c/cd;->u:D

    iget-wide v3, p0, Lcom/aadhk/restpos/c/cd;->w:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/cd;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/cd;->u:D

    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/cd;->q:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/cd;->u:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setGratuity(D)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iput-wide v5, p0, Lcom/aadhk/restpos/c/cd;->u:D

    goto :goto_2

    .line 65
    :sswitch_2
    invoke-direct {p0, v5, v6}, Lcom/aadhk/restpos/c/cd;->a(D)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-wide/high16 v0, 0x4024

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/c/cd;->a(D)V

    goto :goto_0

    .line 71
    :sswitch_4
    const-wide/high16 v0, 0x402e

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/c/cd;->a(D)V

    goto :goto_0

    .line 74
    :sswitch_5
    const-wide/high16 v0, 0x4034

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/c/cd;->a(D)V

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005b -> :sswitch_0
        0x7f0900db -> :sswitch_1
        0x7f090113 -> :sswitch_2
        0x7f090114 -> :sswitch_3
        0x7f090115 -> :sswitch_4
        0x7f090116 -> :sswitch_5
    .end sparse-switch
.end method
