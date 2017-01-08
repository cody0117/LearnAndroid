.class public final Lcom/aadhk/restpos/d/ey;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/ImageButton;

.field private N:D

.field private O:D

.field private P:D

.field private Q:D

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:D

.field private W:Lcom/aadhk/restpos/e/g;

.field private X:Lcom/aadhk/restpos/bean/Customer;

.field private Y:Ljava/lang/String;

.field private Z:I

.field a:Lcom/aadhk/product/library/a/c;

.field private aa:Landroid/view/View;

.field private ab:Lcom/aadhk/restpos/PaymentActivity;

.field private ac:Lcom/aadhk/restpos/bean/Company;

.field private ad:D

.field private ae:D

.field private af:D

.field private ag:Lcom/aadhk/restpos/bean/Order;

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/aadhk/restpos/bean/PaymentMethod;

.field private al:Lcom/aadhk/restpos/bean/RolePermission;

.field private am:Lcom/aadhk/restpos/bean/RolePermission;

.field private an:Lcom/aadhk/restpos/bean/RolePermission;

.field private ao:Lcom/aadhk/restpos/bean/RolePermission;

.field private ap:Lcom/aadhk/restpos/bean/RolePermission;

.field private aq:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private ar:Landroid/widget/Button;

.field private as:Lcom/aadhk/restpos/bean/OrderPayment;

.field private at:Z

.field private au:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation
.end field

.field private av:Lcom/aadhk/restpos/g/s;

.field private aw:Lcom/aadhk/restpos/POSApp;

.field b:Lcom/aadhk/product/library/a/c;

.field c:Lcom/aadhk/product/library/a/c;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 733
    new-instance v0, Lcom/aadhk/restpos/d/fm;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fm;-><init>(Lcom/aadhk/restpos/d/ey;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->a:Lcom/aadhk/product/library/a/c;

    .line 773
    new-instance v0, Lcom/aadhk/restpos/d/fa;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fa;-><init>(Lcom/aadhk/restpos/d/ey;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->b:Lcom/aadhk/product/library/a/c;

    .line 867
    new-instance v0, Lcom/aadhk/restpos/d/fb;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fb;-><init>(Lcom/aadhk/restpos/d/ey;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->c:Lcom/aadhk/product/library/a/c;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ey;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->L:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ey;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/d/ey;->L:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ey;Lcom/aadhk/restpos/bean/PaymentMethod;)Lcom/aadhk/restpos/bean/PaymentMethod;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    return-object p1
.end method

.method private a(I)V
    .locals 10
    .parameter

    .prologue
    const-wide/high16 v8, 0x4024

    const-wide v6, 0x3fb999999999999aL

    const-wide/16 v4, 0x0

    const/16 v3, 0x64

    .line 690
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-boolean v2, p0, Lcom/aadhk/restpos/d/ey;->U:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_0

    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    .line 691
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->m()V

    .line 693
    return-void

    .line 690
    :cond_1
    if-eq p1, v3, :cond_2

    if-nez p1, :cond_5

    :cond_2
    cmpl-double v2, v0, v4

    if-eqz v2, :cond_5

    if-nez p1, :cond_3

    mul-double/2addr v0, v8

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_4
    int-to-double v2, p1

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_5
    cmpl-double v2, v0, v4

    if-nez v2, :cond_6

    if-ne p1, v3, :cond_6

    const/4 p1, 0x0

    :cond_6
    mul-double/2addr v0, v8

    int-to-double v2, p1

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ey;)V
    .locals 5
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->N:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->P:D

    iget v4, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->b(DDI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->m()V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    goto :goto_0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/PaymentActivity;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->h()V

    return-void
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->i()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/ey;)D
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->ad:D

    return-wide v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->h()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ah:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderPayments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ai:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->ad:D

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->ae:D

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->af:D

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isDeliveryAfterTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->S:Z

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aj:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03008d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0901e8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    const v4, 0x7f090196

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v3, 0x4190

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/ey;->L:Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    :cond_1
    new-instance v3, Lcom/aadhk/restpos/d/ez;

    invoke-direct {v3, p0, v1, v0}, Lcom/aadhk/restpos/d/ez;-><init>(Lcom/aadhk/restpos/d/ey;Landroid/widget/Button;Lcom/aadhk/restpos/bean/PaymentMethod;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isServiceAfterTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->S:Z

    goto/16 :goto_0

    .line 164
    :cond_3
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->h()V

    .line 165
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->i()V

    .line 166
    return-void
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/ey;)D
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->ae:D

    return-wide v0
.end method

.method private h()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 311
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aq:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->I:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->H:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->am:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->an:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->H:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ao:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->I:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 352
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 358
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    :goto_4
    return-void

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/ey;)D
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->af:D

    return-wide v0
.end method

.method private i()V
    .locals 12

    .prologue
    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v8

    iget v10, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-boolean v11, p0, Lcom/aadhk/restpos/d/ey;->R:Z

    invoke-static/range {v0 .. v11}, Lcom/aadhk/restpos/util/m;->a(DDDDDIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->N:D

    .line 369
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getTax3Amt()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getGratuity()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->N:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->P:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->m()V

    .line 384
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ey;->N:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    .line 386
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    .line 535
    new-instance v0, Lcom/aadhk/restpos/c/ch;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ey;->au:Ljava/util/List;

    iget-boolean v4, p0, Lcom/aadhk/restpos/d/ey;->S:Z

    iget-boolean v5, p0, Lcom/aadhk/restpos/d/ey;->T:Z

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/c/ch;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;ZZ)V

    .line 536
    new-instance v1, Lcom/aadhk/restpos/d/fi;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fi;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ch;->a(Lcom/aadhk/product/library/b/f;)V

    .line 546
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ch;->show()V

    .line 547
    return-void
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/ey;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->T:Z

    return v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/ey;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    const v1, 0x7f08031a

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ey;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 562
    const v1, 0x7f08031b

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ey;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 565
    new-instance v1, Lcom/aadhk/product/library/b/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v1, v2, v0}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1}, Lcom/aadhk/product/library/b/a;->a()V

    .line 567
    new-instance v0, Lcom/aadhk/restpos/d/fj;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fj;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 604
    invoke-virtual {v1}, Lcom/aadhk/product/library/b/a;->show()V

    .line 605
    return-void
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aq:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 621
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->av:Lcom/aadhk/restpos/g/s;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/s;->a()Ljava/util/List;

    move-result-object v0

    .line 622
    new-instance v1, Lcom/aadhk/restpos/c/bw;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-boolean v4, p0, Lcom/aadhk/restpos/d/ey;->T:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/aadhk/restpos/c/bw;-><init>(Lcom/aadhk/restpos/PaymentActivity;Ljava/util/List;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 623
    const v0, 0x7f0802e2

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bw;->setTitle(I)V

    .line 624
    new-instance v0, Lcom/aadhk/restpos/d/fl;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/fl;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bw;->a(Lcom/aadhk/restpos/c/cc;)V

    .line 646
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bw;->show()V

    .line 647
    return-void
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method private m()V
    .locals 8

    .prologue
    .line 696
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->P:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/ey;->N:D

    iget v6, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v7, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    .line 697
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/ey;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ah:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 707
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->P:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->P:D

    .line 708
    new-instance v0, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    .line 709
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setOrderId(J)V

    .line 711
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodType(I)V

    .line 713
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ey;->O:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    .line 714
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setChangeAmt(D)V

    .line 716
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-wide v3, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    iget v5, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/util/m;->b(DDI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->isOpenDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->at:Z

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentTime(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ai:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iput-wide v6, p0, Lcom/aadhk/restpos/d/ey;->O:D

    .line 728
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ey;->O:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->W:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/g/s;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->av:Lcom/aadhk/restpos/g/s;

    return-object v0
.end method

.method static synthetic q(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->n()V

    return-void
.end method

.method static synthetic r(Lcom/aadhk/restpos/d/ey;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->at:Z

    return v0
.end method

.method static synthetic s(Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/bean/OrderPayment;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->as:Lcom/aadhk/restpos/bean/OrderPayment;

    return-object v0
.end method

.method static synthetic t(Lcom/aadhk/restpos/d/ey;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->j()V

    return-void
.end method

.method static synthetic v(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->k()V

    return-void
.end method

.method static synthetic w(Lcom/aadhk/restpos/d/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->l()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08015e

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/ey;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->W:Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->aq:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ey;->ah:Ljava/util/List;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/e/g;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 522
    new-instance v0, Lcom/aadhk/restpos/c/ap;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 523
    const v1, 0x7f080320

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ap;->setTitle(I)V

    .line 524
    new-instance v1, Lcom/aadhk/restpos/d/fh;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fh;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/product/library/b/f;)V

    .line 531
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ap;->show()V

    .line 532
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ap:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->j()V

    .line 916
    :goto_0
    return-void

    .line 907
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 908
    new-instance v1, Lcom/aadhk/restpos/d/fc;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fc;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 914
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 919
    new-instance v0, Lcom/aadhk/restpos/c/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-boolean v3, p0, Lcom/aadhk/restpos/d/ey;->S:Z

    iget-boolean v4, p0, Lcom/aadhk/restpos/d/ey;->T:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/c/cd;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;ZZ)V

    new-instance v1, Lcom/aadhk/restpos/d/fk;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fk;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cd;->show()V

    .line 920
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->al:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->k()V

    .line 935
    :goto_0
    return-void

    .line 926
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 927
    new-instance v1, Lcom/aadhk/restpos/d/fd;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fd;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 933
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->am:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->l()V

    .line 950
    :goto_0
    return-void

    .line 941
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 942
    new-instance v1, Lcom/aadhk/restpos/d/fe;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fe;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 948
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ar:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->R:Z

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isDiscountAfterTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->T:Z

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->w()Ljava/util/Map;

    move-result-object v1

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->j()Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->al:Lcom/aadhk/restpos/bean/RolePermission;

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->i()Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->am:Lcom/aadhk/restpos/bean/RolePermission;

    .line 132
    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->an:Lcom/aadhk/restpos/bean/RolePermission;

    .line 133
    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ao:Lcom/aadhk/restpos/bean/RolePermission;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->k()Lcom/aadhk/restpos/bean/RolePermission;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ap:Lcom/aadhk/restpos/bean/RolePermission;

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ac:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->x()Lcom/aadhk/restpos/g/s;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->av:Lcom/aadhk/restpos/g/s;

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aw:Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->aq:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aw:Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->aj:Ljava/util/List;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->au:Ljava/util/List;

    .line 146
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->g()V

    .line 147
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->m()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ar:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setCustomerId(J)V

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ag:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCustomerName(Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ar:Landroid/widget/Button;

    const v1, 0x7f080314

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 899
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 900
    check-cast p1, Lcom/aadhk/restpos/PaymentActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    .line 901
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/high16 v7, 0x4024

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 392
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 395
    :sswitch_1
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 398
    :sswitch_2
    invoke-direct {p0, v5}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 401
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 404
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 407
    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 410
    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 413
    :sswitch_7
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 416
    :sswitch_8
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 419
    :sswitch_9
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 422
    :sswitch_a
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ey;->a(I)V

    goto :goto_0

    .line 425
    :sswitch_b
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ey;->U:Z

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/aadhk/restpos/d/ey;->U:Z

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->V:D

    goto :goto_0

    .line 429
    :sswitch_c
    iput-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    .line 430
    iput-wide v2, p0, Lcom/aadhk/restpos/d/ey;->P:D

    .line 431
    iput-boolean v6, p0, Lcom/aadhk/restpos/d/ey;->U:Z

    .line 433
    iput-object v4, p0, Lcom/aadhk/restpos/d/ey;->ak:Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 435
    iput-object v4, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/bean/Customer;)V

    .line 437
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ar:Landroid/widget/Button;

    const v1, 0x7f080314

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 439
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->a()V

    .line 440
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->g()V

    .line 443
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->e()V

    .line 444
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->d()V

    goto :goto_0

    .line 447
    :sswitch_d
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 448
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-boolean v2, p0, Lcom/aadhk/restpos/d/ey;->U:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    const-wide v4, 0x3fb999999999999aL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    mul-double/2addr v0, v7

    div-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    iput-boolean v6, p0, Lcom/aadhk/restpos/d/ey;->U:Z

    :cond_1
    :goto_1
    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    .line 449
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->m()V

    goto/16 :goto_0

    .line 448
    :cond_2
    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    div-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v7

    const-wide v2, 0x3fb999999999999aL

    iput-wide v2, p0, Lcom/aadhk/restpos/d/ey;->V:D

    goto :goto_1

    :cond_3
    div-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    goto :goto_1

    .line 454
    :sswitch_e
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->N:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->P:D

    iget v4, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->b(DDI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    .line 455
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->m()V

    goto/16 :goto_0

    .line 460
    :sswitch_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aq:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setOpenDrawer(Z)V

    .line 462
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ao:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_4

    .line 463
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1, v2, v6}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 464
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 466
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 467
    new-instance v1, Lcom/aadhk/restpos/d/ff;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ff;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 474
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto/16 :goto_0

    .line 477
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f080231

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 481
    :sswitch_10
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    goto/16 :goto_0

    .line 485
    :sswitch_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->an:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_6

    .line 486
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->c:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1, v2, v6}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 487
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 489
    :cond_6
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance v1, Lcom/aadhk/restpos/d/fg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fg;-><init>(Lcom/aadhk/restpos/d/ey;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 497
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto/16 :goto_0

    .line 501
    :sswitch_12
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->Q:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_8

    .line 502
    iget-wide v0, p0, Lcom/aadhk/restpos/d/ey;->O:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    .line 504
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ey;->n()V

    .line 505
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->d()V

    .line 508
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->O:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/aadhk/restpos/d/ey;->Z:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/ey;->P:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/ey;->Y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 511
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f080321

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 514
    :cond_8
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/fn;

    invoke-direct {v1, p0, v6}, Lcom/aadhk/restpos/d/fn;-><init>(Lcom/aadhk/restpos/d/ey;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1, v2, v6}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 515
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x7f090129 -> :sswitch_f
        0x7f0901d6 -> :sswitch_8
        0x7f0901d7 -> :sswitch_9
        0x7f0901d8 -> :sswitch_a
        0x7f0901d9 -> :sswitch_5
        0x7f0901da -> :sswitch_6
        0x7f0901db -> :sswitch_7
        0x7f0901dc -> :sswitch_2
        0x7f0901dd -> :sswitch_3
        0x7f0901de -> :sswitch_4
        0x7f0901df -> :sswitch_0
        0x7f0901e0 -> :sswitch_1
        0x7f0901e1 -> :sswitch_b
        0x7f0901e2 -> :sswitch_d
        0x7f0901e3 -> :sswitch_c
        0x7f0901e4 -> :sswitch_e
        0x7f0901e5 -> :sswitch_10
        0x7f0901e6 -> :sswitch_11
        0x7f0901e7 -> :sswitch_12
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/ey;->setHasOptionsMenu(Z)V

    .line 112
    new-instance v0, Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->W:Lcom/aadhk/restpos/e/g;

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->m()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->X:Lcom/aadhk/restpos/bean/Customer;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->b()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->ar:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->ab:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->aw:Lcom/aadhk/restpos/POSApp;

    .line 116
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 191
    const v0, 0x7f03008c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->r:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->s:Landroid/widget/LinearLayout;

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->d:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->e:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->g:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->f:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->h:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->i:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->j:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->k:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->l:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->m:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->n:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->o:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->p:Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->q:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->u:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->v:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->w:Landroid/widget/Button;

    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->x:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->y:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->z:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->A:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->B:Landroid/widget/Button;

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->C:Landroid/widget/Button;

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->D:Landroid/widget/Button;

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->E:Landroid/widget/Button;

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->F:Landroid/widget/Button;

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->t:Landroid/widget/Button;

    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->H:Landroid/widget/Button;

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->K:Landroid/widget/Button;

    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->J:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->I:Landroid/widget/Button;

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->G:Landroid/widget/Button;

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ey;->M:Landroid/widget/ImageButton;

    .line 232
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->D:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->M:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->I:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->H:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/d/ey;->aa:Landroid/view/View;

    return-object v0
.end method
