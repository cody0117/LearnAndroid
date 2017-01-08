.class public final Lcom/aadhk/restpos/c/be;
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

.field private t:I

.field private u:D

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;D)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const v0, 0x7f03003e

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 39
    const v0, 0x7f0902aa

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->setTitle(I)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->p:Lcom/aadhk/restpos/bean/Company;

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->r:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/be;->v:I

    .line 43
    iput-wide p3, p0, Lcom/aadhk/restpos/c/be;->u:D

    .line 44
    iput-object p2, p0, Lcom/aadhk/restpos/c/be;->q:Lcom/aadhk/restpos/bean/Order;

    .line 45
    const v0, 0x7f0b00db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->n:Landroid/widget/TextView;

    const v0, 0x7f0b00dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    const v0, 0x7f0b00dd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/be;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00de

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->f:Landroid/widget/Button;

    const v0, 0x7f0b00e3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/be;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/be;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/bf;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bf;-><init>(Lcom/aadhk/restpos/c/be;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/bg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bg;-><init>(Lcom/aadhk/restpos/c/be;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/bh;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bh;-><init>(Lcom/aadhk/restpos/c/be;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->q:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/be;->s:D

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/be;->t:I

    iget-wide v0, p0, Lcom/aadhk/restpos/c/be;->s:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/be;->s:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/be;->s:D

    iget-wide v3, p0, Lcom/aadhk/restpos/c/be;->u:D

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/h;->b(DD)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/c/be;->v:I

    iget-wide v2, p0, Lcom/aadhk/restpos/c/be;->u:D

    iget-object v4, p0, Lcom/aadhk/restpos/c/be;->r:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->p:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/aadhk/restpos/c/be;->u:D

    iget v2, p0, Lcom/aadhk/restpos/c/be;->t:I

    iget v3, p0, Lcom/aadhk/restpos/c/be;->v:I

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/be;->s:D

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/c/be;->t:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/be;->s:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/be;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/aadhk/restpos/c/be;->s:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/be;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/aadhk/restpos/c/be;->t:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/be;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/aadhk/restpos/c/be;->u:D

    iget v2, p0, Lcom/aadhk/restpos/c/be;->v:I

    invoke-static {v0, v1, p1, v2}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/be;->s:D

    .line 82
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/be;->s:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/be;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/aadhk/restpos/c/be;->s:D

    return-wide v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/be;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/aadhk/restpos/c/be;->u:D

    return-wide v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/be;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/be;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/restpos/c/be;->t:I

    return v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/be;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/restpos/c/be;->v:I

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0902ba

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 78
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 54
    :sswitch_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/be;->dismiss()V

    goto :goto_0

    .line 57
    :sswitch_2
    iget-object v1, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget v1, p0, Lcom/aadhk/restpos/c/be;->t:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/be;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/be;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->a:Lcom/aadhk/product/library/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/be;->dismiss()V

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/aadhk/restpos/c/be;->s:D

    iget-wide v3, p0, Lcom/aadhk/restpos/c/be;->u:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/be;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/be;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/be;->q:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/be;->s:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    const/4 v0, 0x1

    goto :goto_1

    .line 66
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/be;->a(I)V

    goto :goto_0

    .line 69
    :sswitch_4
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/be;->a(I)V

    goto :goto_0

    .line 72
    :sswitch_5
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/be;->a(I)V

    goto :goto_0

    .line 75
    :sswitch_6
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/c/be;->a(I)V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x7f0b00de -> :sswitch_3
        0x7f0b00df -> :sswitch_4
        0x7f0b00e0 -> :sswitch_5
        0x7f0b00e1 -> :sswitch_6
        0x7f0b00e2 -> :sswitch_2
        0x7f0b00e3 -> :sswitch_1
        0x7f0b017c -> :sswitch_0
        0x7f0b017e -> :sswitch_0
    .end sparse-switch
.end method
