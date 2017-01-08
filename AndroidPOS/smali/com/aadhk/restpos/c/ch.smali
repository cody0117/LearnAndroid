.class public final Lcom/aadhk/restpos/c/ch;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/GridView;

.field private m:Lcom/aadhk/restpos/bean/Company;

.field private n:Lcom/aadhk/restpos/bean/Order;

.field private o:Ljava/lang/String;

.field private p:D

.field private q:Ljava/lang/String;

.field private r:D

.field private s:I

.field private t:Landroid/content/Context;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/view/LayoutInflater;

.field private w:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 51
    const v0, 0x7f030069

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 52
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->setTitle(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->m:Lcom/aadhk/restpos/bean/Company;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->o:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->m:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/ch;->s:I

    .line 56
    iput-object p2, p0, Lcom/aadhk/restpos/c/ch;->n:Lcom/aadhk/restpos/bean/Order;

    .line 57
    iput-object p1, p0, Lcom/aadhk/restpos/c/ch;->t:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/aadhk/restpos/c/ch;->u:Ljava/util/List;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->v:Landroid/view/LayoutInflater;

    .line 61
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->w:D

    .line 62
    if-eqz p4, :cond_1

    .line 63
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->w:D

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

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->w:D

    .line 68
    :cond_0
    :goto_0
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->j:Landroid/widget/TextView;

    const v0, 0x7f090168

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    const v0, 0x7f090169

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->l:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->l:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/c/cl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/cl;-><init>(Lcom/aadhk/restpos/c/ch;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->f:Landroid/widget/Button;

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ci;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ci;-><init>(Lcom/aadhk/restpos/c/ch;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/cj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/cj;-><init>(Lcom/aadhk/restpos/c/ch;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/ck;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ck;-><init>(Lcom/aadhk/restpos/c/ch;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->n:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/ch;->w:D

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/ch;->r:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/c/ch;->s:I

    iget-wide v2, p0, Lcom/aadhk/restpos/c/ch;->w:D

    iget-object v4, p0, Lcom/aadhk/restpos/c/ch;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->b(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 64
    :cond_1
    if-nez p5, :cond_0

    .line 65
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->w:D

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->w:D

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ch;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/aadhk/restpos/c/ch;->r:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ch;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/ch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/ch;)D
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    return-wide v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/ch;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/aadhk/restpos/c/ch;->p:D

    return-wide p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/ch;)D
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->w:D

    return-wide v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/ch;)D
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    return-wide v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/ch;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/ch;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/c/ch;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/aadhk/restpos/c/ch;->s:I

    return v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/c/ch;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/c/ch;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->v:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/c/ch;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->t:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f080318

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :sswitch_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ch;->dismiss()V

    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-wide v1, p0, Lcom/aadhk/restpos/c/ch;->p:D

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/ch;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->a:Lcom/aadhk/product/library/b/f;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/ch;->r:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ch;->dismiss()V

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/aadhk/restpos/c/ch;->r:D

    iget-wide v3, p0, Lcom/aadhk/restpos/c/ch;->w:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/ch;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    goto :goto_2

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005b -> :sswitch_0
        0x7f0900db -> :sswitch_1
    .end sparse-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ServiceFee;

    .line 230
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-wide v1, p0, Lcom/aadhk/restpos/c/ch;->w:D

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v3

    iget v5, p0, Lcom/aadhk/restpos/c/ch;->s:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/aadhk/restpos/c/ch;->r:D

    .line 232
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    .line 233
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/c/ch;->i:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/ch;->r:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    .line 236
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->r:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/ch;->w:D

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    .line 237
    iget-wide v0, p0, Lcom/aadhk/restpos/c/ch;->p:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/ch;->q:Ljava/lang/String;

    goto :goto_0
.end method
