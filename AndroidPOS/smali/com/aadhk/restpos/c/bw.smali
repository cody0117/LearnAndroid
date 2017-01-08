.class public final Lcom/aadhk/restpos/c/bw;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Lcom/aadhk/restpos/c/cc;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/GridView;

.field private o:D

.field private p:D

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/aadhk/restpos/bean/Company;

.field private t:Lcom/aadhk/restpos/bean/Order;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Lcom/aadhk/restpos/PaymentActivity;

.field private x:D


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/PaymentActivity;Ljava/util/List;Lcom/aadhk/restpos/bean/Order;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/PaymentActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    const v0, 0x7f03005b

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 51
    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->setTitle(I)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->s:Lcom/aadhk/restpos/bean/Company;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->u:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->s:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/c/bw;->v:I

    .line 55
    iput-object p1, p0, Lcom/aadhk/restpos/c/bw;->w:Lcom/aadhk/restpos/PaymentActivity;

    .line 56
    iput-object p2, p0, Lcom/aadhk/restpos/c/bw;->r:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/aadhk/restpos/c/bw;->t:Lcom/aadhk/restpos/bean/Order;

    .line 59
    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->x:D

    .line 60
    if-eqz p4, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->x:D

    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p3}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->x:D

    .line 64
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/bean/Discount;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Discount;-><init>()V

    invoke-interface {p2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->l:Landroid/widget/Button;

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->n:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->n:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->n:Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/c/ca;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/c/ca;-><init>(Lcom/aadhk/restpos/c/bw;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->j:Landroid/widget/TextView;

    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->k:Landroid/widget/TextView;

    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/c/bw;->v:I

    iget-wide v2, p0, Lcom/aadhk/restpos/c/bw;->x:D

    iget-object v4, p0, Lcom/aadhk/restpos/c/bw;->u:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->b(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->t:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->o:D

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/bw;->o:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->o:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/bw;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->t:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getDiscountReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/bx;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bx;-><init>(Lcom/aadhk/restpos/c/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/by;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/by;-><init>(Lcom/aadhk/restpos/c/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/aadhk/restpos/c/bz;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bz;-><init>(Lcom/aadhk/restpos/c/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bw;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/aadhk/restpos/c/bw;->o:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bw;)D
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->o:D

    return-wide v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bw;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/aadhk/restpos/c/bw;->p:D

    return-wide p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bw;)D
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->x:D

    return-wide v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bw;)D
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    return-wide v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/bw;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/bw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/c/bw;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/aadhk/restpos/c/bw;->v:I

    return v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/c/bw;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/c/bw;)Lcom/aadhk/restpos/PaymentActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->w:Lcom/aadhk/restpos/PaymentActivity;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/aadhk/restpos/c/bw;->f:Lcom/aadhk/restpos/c/cc;

    .line 109
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f080318

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-wide v1, p0, Lcom/aadhk/restpos/c/bw;->p:D

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bw;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->f:Lcom/aadhk/restpos/c/cc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->f:Lcom/aadhk/restpos/c/cc;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/bw;->o:D

    iget-wide v3, p0, Lcom/aadhk/restpos/c/bw;->p:D

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/c/cc;->a(DD)V

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bw;->dismiss()V

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/aadhk/restpos/c/bw;->o:D

    iget-wide v3, p0, Lcom/aadhk/restpos/c/bw;->x:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bw;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->t:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Order;->setDiscountReason(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 75
    :sswitch_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bw;->dismiss()V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005b -> :sswitch_1
        0x7f0900db -> :sswitch_0
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
    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->r:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    .line 192
    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPercentage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-wide v1, p0, Lcom/aadhk/restpos/c/bw;->x:D

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v3

    iget v5, p0, Lcom/aadhk/restpos/c/bw;->v:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->a(DDI)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/aadhk/restpos/c/bw;->o:D

    .line 196
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    .line 197
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->g:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/aadhk/restpos/c/bw;->o:D

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->o:D

    .line 200
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->o:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/bw;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    .line 201
    iget-wide v0, p0, Lcom/aadhk/restpos/c/bw;->p:D

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->q:Ljava/lang/String;

    goto :goto_0
.end method
