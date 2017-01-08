.class public final Lcom/aadhk/restpos/d/cd;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


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

.field private M:Landroid/widget/Button;

.field private N:Landroid/widget/Button;

.field private O:Landroid/widget/Button;

.field private P:Landroid/widget/ImageButton;

.field private Q:D

.field private R:D

.field private S:D

.field private T:D

.field private U:Z

.field private V:Z

.field private W:Lcom/aadhk/restpos/bean/Order;

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Z

.field private Z:Z

.field a:Lcom/aadhk/product/library/a/b;

.field private aA:Lcom/aadhk/restpos/f/l;

.field private aB:Landroid/view/MenuItem;

.field private aC:Lcom/aadhk/restpos/bean/Discount;

.field private aD:Lcom/aadhk/restpos/bean/OrderPayment;

.field private aE:Z

.field private aa:D

.field private ab:Lcom/aadhk/restpos/e/f;

.field private ac:Lcom/aadhk/restpos/bean/Customer;

.field private ad:Ljava/lang/String;

.field private ae:I

.field private af:Landroid/view/View;

.field private ag:Lcom/aadhk/restpos/PaymentActivity;

.field private ah:Lcom/aadhk/restpos/b/w;

.field private ai:Lcom/aadhk/restpos/b/p;

.field private aj:Lcom/aadhk/restpos/b/m;

.field private ak:Lcom/aadhk/restpos/b/r;

.field private al:Lcom/aadhk/restpos/b/h;

.field private am:Landroid/content/res/Resources;

.field private an:Lcom/aadhk/restpos/bean/Company;

.field private ao:D

.field private ap:D

.field private aq:D

.field private ar:D

.field private as:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private at:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private au:Lcom/aadhk/restpos/bean/PaymentMethod;

.field private av:Lcom/aadhk/restpos/bean/RolePermission;

.field private aw:Lcom/aadhk/restpos/bean/RolePermission;

.field private ax:Lcom/aadhk/restpos/bean/RolePermission;

.field private ay:Lcom/aadhk/restpos/bean/RolePermission;

.field private az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field b:Lcom/aadhk/product/library/a/b;

.field c:Lcom/aadhk/product/library/a/b;

.field d:Lcom/aadhk/product/library/a/b;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/Button;

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
    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 946
    new-instance v0, Lcom/aadhk/restpos/d/cg;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/cg;-><init>(Lcom/aadhk/restpos/d/cd;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->a:Lcom/aadhk/product/library/a/b;

    .line 970
    new-instance v0, Lcom/aadhk/restpos/d/ch;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ch;-><init>(Lcom/aadhk/restpos/d/cd;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->b:Lcom/aadhk/product/library/a/b;

    .line 994
    new-instance v0, Lcom/aadhk/restpos/d/ci;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ci;-><init>(Lcom/aadhk/restpos/d/cd;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->c:Lcom/aadhk/product/library/a/b;

    .line 1038
    new-instance v0, Lcom/aadhk/restpos/d/ck;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ck;-><init>(Lcom/aadhk/restpos/d/cd;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->d:Lcom/aadhk/product/library/a/b;

    return-void
.end method

.method static synthetic A(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/b/w;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ah:Lcom/aadhk/restpos/b/w;

    return-object v0
.end method

.method static synthetic B(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/OrderPayment;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    return-object v0
.end method

.method static synthetic C(Lcom/aadhk/restpos/d/cd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cd;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->O:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cd;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/aadhk/restpos/d/cd;->O:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cd;Lcom/aadhk/restpos/bean/Discount;)Lcom/aadhk/restpos/bean/Discount;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/aadhk/restpos/d/cd;->aC:Lcom/aadhk/restpos/bean/Discount;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cd;Lcom/aadhk/restpos/bean/PaymentMethod;)Lcom/aadhk/restpos/bean/PaymentMethod;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    return-object p1
.end method

.method private a()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 324
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 325
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->at:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 327
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030076

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 328
    const v1, 0x7f0b0199

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 329
    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->at:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 330
    const v4, 0x7f0b014d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    new-instance v3, Lcom/aadhk/restpos/d/ce;

    invoke-direct {v3, p0, v1, v0}, Lcom/aadhk/restpos/d/ce;-><init>(Lcom/aadhk/restpos/d/cd;Landroid/widget/Button;Lcom/aadhk/restpos/bean/PaymentMethod;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 325
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v11, v12}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    iget-object v10, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    iget-wide v6, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v6

    int-to-double v6, v6

    iget v8, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-boolean v9, p0, Lcom/aadhk/restpos/d/cd;->U:Z

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->a(DDDDIZ)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aA:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v11, v12}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 375
    :cond_3
    return-void

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v11, v12}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    const v1, 0x7f0902a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v8, 0x4024

    const/16 v7, 0x64

    const-wide/16 v5, 0x0

    .line 900
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    iget-boolean v1, p0, Lcom/aadhk/restpos/d/cd;->Z:Z

    if-eqz v1, :cond_0

    .line 902
    iput-wide v5, p0, Lcom/aadhk/restpos/d/cd;->R:D

    .line 904
    :cond_0
    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-boolean v3, p0, Lcom/aadhk/restpos/d/cd;->Y:Z

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    const-wide v5, 0x3f847ae147ae147bL

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    const/16 v3, 0xa

    if-ge p1, v3, :cond_1

    iget-wide v3, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    int-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    :cond_1
    :goto_0
    iput-wide v1, p0, Lcom/aadhk/restpos/d/cd;->R:D

    .line 905
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    iget v2, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v3, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-object v5, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 906
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->h()V

    .line 907
    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->Z:Z

    .line 909
    :cond_2
    return-void

    .line 904
    :cond_3
    if-eq p1, v7, :cond_4

    if-nez p1, :cond_7

    :cond_4
    iget-wide v3, p0, Lcom/aadhk/restpos/d/cd;->R:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_7

    if-nez p1, :cond_5

    mul-double/2addr v1, v8

    goto :goto_0

    :cond_5
    if-ne p1, v7, :cond_6

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    goto :goto_0

    :cond_6
    int-to-double v3, p1

    mul-double/2addr v1, v3

    goto :goto_0

    :cond_7
    cmpl-double v3, v1, v5

    if-nez v3, :cond_8

    if-ne p1, v7, :cond_8

    move p1, v0

    :cond_8
    mul-double/2addr v1, v8

    int-to-double v3, p1

    add-double/2addr v1, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/cd;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    return-wide p1
.end method

.method private b()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 378
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->L:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->K:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->N:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aw:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->F:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ax:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->K:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->av:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-nez v0, :cond_8

    .line 406
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 414
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ay:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aA:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->m()Z

    move-result v0

    if-nez v0, :cond_9

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    :goto_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 424
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    :goto_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ay:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_b

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 438
    :goto_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 439
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    :goto_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 445
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    :goto_7
    return-void

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->F:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 401
    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 409
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2

    .line 418
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 427
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 434
    :cond_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_5

    .line 441
    :cond_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 447
    :cond_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/cd;)V
    .locals 5
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->Q:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget v4, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/f/h;->b(DDI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->h()V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    .line 452
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v6

    iget v8, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-boolean v9, p0, Lcom/aadhk/restpos/d/cd;->U:Z

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->b(DDDDIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->Q:D

    .line 453
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->e:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->h:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->g:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getServiceAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->f:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->i:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->Q:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->k:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 461
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->h()V

    .line 465
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->Q:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    .line 466
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 467
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 469
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->g()V

    return-void
.end method

.method private d()V
    .locals 11

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->V:Z

    if-eqz v0, :cond_0

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->V:Z

    .line 717
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 718
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    const v1, 0x7f0902a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 724
    :goto_0
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->c()V

    .line 725
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    .line 726
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->V:Z

    .line 721
    iget-object v10, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    iget-wide v6, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v6

    int-to-double v6, v6

    iget v8, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-boolean v9, p0, Lcom/aadhk/restpos/d/cd;->U:Z

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->a(DDDDIZ)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 722
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    const v1, 0x7f0902bc

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/cd;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 738
    const v1, 0x7f0902bd

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/cd;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 741
    new-instance v1, Lcom/aadhk/product/library/b/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v1, v2, v0}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 742
    invoke-virtual {v1}, Lcom/aadhk/product/library/b/a;->a()V

    .line 743
    new-instance v2, Lcom/aadhk/restpos/d/cr;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/cr;-><init>(Lcom/aadhk/restpos/d/cd;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    .line 784
    invoke-virtual {v1}, Lcom/aadhk/product/library/b/a;->show()V

    .line 785
    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->e()V

    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    .line 788
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v6

    iget v8, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-boolean v9, p0, Lcom/aadhk/restpos/d/cd;->U:Z

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->b(DDDDIZ)D

    move-result-wide v0

    .line 789
    new-instance v2, Lcom/aadhk/restpos/c/be;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/aadhk/restpos/c/be;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;D)V

    .line 790
    new-instance v0, Lcom/aadhk/restpos/d/cs;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/cs;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/c/be;->a(Lcom/aadhk/product/library/b/f;)V

    .line 797
    invoke-virtual {v2}, Lcom/aadhk/restpos/c/be;->show()V

    .line 798
    return-void
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->d()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 801
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->al:Lcom/aadhk/restpos/b/h;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/h;->a()Ljava/util/List;

    move-result-object v4

    .line 803
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 805
    const v1, 0x7f09028f

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/cd;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 872
    :goto_0
    return-void

    .line 810
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bv;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    iget v3, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-object v5, p0, Lcom/aadhk/restpos/d/cd;->aC:Lcom/aadhk/restpos/bean/Discount;

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/c/bv;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;Lcom/aadhk/restpos/bean/Discount;)V

    .line 811
    const v1, 0x7f090283

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bv;->setTitle(I)V

    .line 812
    new-instance v1, Lcom/aadhk/restpos/d/cf;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cf;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bv;->a(Lcom/aadhk/product/library/b/f;)V

    .line 848
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bv;->show()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/cd;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->am:Landroid/content/res/Resources;

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    .line 912
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget-wide v4, p0, Lcom/aadhk/restpos/d/cd;->Q:D

    iget v6, p0, Lcom/aadhk/restpos/d/cd;->ae:I

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

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->T:D

    .line 913
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->T:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->T:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->l:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 920
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->T:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->l:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 923
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->R:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->S:D

    .line 924
    new-instance v0, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    .line 925
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setOrderId(J)V

    .line 927
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodType(I)V

    .line 929
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->R:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    .line 930
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->T:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->T:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setChangeAmt(D)V

    .line 932
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-wide v3, p0, Lcom/aadhk/restpos/d/cd;->T:D

    iget v5, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aadhk/restpos/f/h;->b(DDI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    .line 937
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->isOpenDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->aE:Z

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentTime(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->as:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    iput-wide v6, p0, Lcom/aadhk/restpos/d/cd;->R:D

    .line 944
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aD:Lcom/aadhk/restpos/bean/OrderPayment;

    iget-wide v1, p0, Lcom/aadhk/restpos/d/cd;->R:D

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->aq:D

    return-wide v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ar:D

    return-wide v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    return-wide v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/cd;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    return v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/d/cd;)D
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    return-wide v0
.end method

.method static synthetic q(Lcom/aadhk/restpos/d/cd;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->V:Z

    return v0
.end method

.method static synthetic r(Lcom/aadhk/restpos/d/cd;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->U:Z

    return v0
.end method

.method static synthetic s(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic t(Lcom/aadhk/restpos/d/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->c()V

    return-void
.end method

.method static synthetic u(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Discount;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aC:Lcom/aadhk/restpos/bean/Discount;

    return-object v0
.end method

.method static synthetic v(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic w(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method static synthetic x(Lcom/aadhk/restpos/d/cd;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->X:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ab:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method

.method static synthetic z(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/b/m;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aj:Lcom/aadhk/restpos/b/m;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->U:Z

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->V:Z

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->o()Ljava/util/Map;

    move-result-object v1

    .line 150
    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->av:Lcom/aadhk/restpos/bean/RolePermission;

    .line 151
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->aw:Lcom/aadhk/restpos/bean/RolePermission;

    .line 152
    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->ax:Lcom/aadhk/restpos/bean/RolePermission;

    .line 153
    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->ay:Lcom/aadhk/restpos/bean/RolePermission;

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/aadhk/restpos/b/w;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cd;->ah:Lcom/aadhk/restpos/b/w;

    .line 161
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cd;->aj:Lcom/aadhk/restpos/b/m;

    .line 162
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cd;->ai:Lcom/aadhk/restpos/b/p;

    .line 163
    new-instance v1, Lcom/aadhk/restpos/b/r;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cd;->ak:Lcom/aadhk/restpos/b/r;

    .line 164
    new-instance v1, Lcom/aadhk/restpos/b/h;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/h;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cd;->al:Lcom/aadhk/restpos/b/h;

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ak:Lcom/aadhk/restpos/b/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ai:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/p;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->at:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->e()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->X:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->as:Ljava/util/List;

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->as:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTax2Name(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->F:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax1Amt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->aq:D

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTax2Amt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ar:D

    .line 187
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->b()V

    .line 188
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->c()V

    .line 189
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->a()V

    .line 190
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->g()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setCustomerId(J)V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCustomerName(Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    const v1, 0x7f0902b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1081
    check-cast p1, Lcom/aadhk/restpos/PaymentActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    .line 1082
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v9, 0xb

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 475
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 478
    :sswitch_1
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 481
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 484
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 487
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 490
    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 493
    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 496
    :sswitch_7
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 499
    :sswitch_8
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 502
    :sswitch_9
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 505
    :sswitch_a
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/cd;->a(I)V

    goto :goto_0

    .line 508
    :sswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->Y:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/aadhk/restpos/d/cd;->Y:Z

    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    goto :goto_0

    .line 511
    :sswitch_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aw:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->g()V

    goto :goto_0

    .line 514
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 515
    new-instance v1, Lcom/aadhk/restpos/d/cl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cl;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 521
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto :goto_0

    .line 525
    :sswitch_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ay:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->f()V

    goto :goto_0

    .line 528
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 529
    new-instance v1, Lcom/aadhk/restpos/d/cm;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cm;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 535
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_0

    .line 539
    :sswitch_e
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->av:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 540
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->e()V

    goto/16 :goto_0

    .line 542
    :cond_3
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 543
    new-instance v1, Lcom/aadhk/restpos/d/cn;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cn;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 549
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_0

    .line 553
    :sswitch_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ay:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->d()V

    goto/16 :goto_0

    .line 556
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 557
    new-instance v1, Lcom/aadhk/restpos/d/co;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/co;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 563
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_0

    .line 568
    :sswitch_10
    iput-wide v7, p0, Lcom/aadhk/restpos/d/cd;->S:D

    .line 569
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->k:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iput-boolean v6, p0, Lcom/aadhk/restpos/d/cd;->Y:Z

    .line 571
    iput-wide v7, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    .line 574
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->aq:D

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ao:D

    .line 575
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ar:D

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->ap:D

    .line 576
    iput-object v5, p0, Lcom/aadhk/restpos/d/cd;->aC:Lcom/aadhk/restpos/bean/Discount;

    .line 577
    iput-object v5, p0, Lcom/aadhk/restpos/d/cd;->au:Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 578
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->c()V

    .line 579
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->a()V

    .line 582
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->b()V

    .line 586
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setReceiptNote(Ljava/lang/String;)V

    .line 587
    iput-object v5, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    .line 588
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/bean/Customer;)V

    .line 589
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    const v1, 0x7f0902b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 592
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    .line 593
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->b()V

    goto/16 :goto_0

    .line 597
    :sswitch_11
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    cmpl-double v0, v0, v7

    if-eqz v0, :cond_0

    .line 598
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    invoke-static {v0, v1}, Lcom/aadhk/restpos/f/j;->b(D)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/j;->d(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    .line 600
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 601
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->h()V

    .line 602
    iput-boolean v6, p0, Lcom/aadhk/restpos/d/cd;->Z:Z

    goto/16 :goto_0

    .line 606
    :sswitch_12
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->Q:D

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget v4, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/f/h;->b(DDI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    .line 607
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 608
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->h()V

    goto/16 :goto_0

    .line 613
    :sswitch_13
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setOpenDrawer(Z)V

    .line 615
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->a:Lcom/aadhk/product/library/a/b;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cd;->am:Landroid/content/res/Resources;

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 616
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_5

    .line 617
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 619
    :cond_5
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 622
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f0901f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 626
    :sswitch_14
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ax:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_8

    .line 627
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->d:Lcom/aadhk/product/library/a/b;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cd;->am:Landroid/content/res/Resources;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 628
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_7

    .line 629
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 631
    :cond_7
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 634
    :cond_8
    new-instance v0, Lcom/aadhk/restpos/c/au;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 635
    new-instance v1, Lcom/aadhk/restpos/d/cp;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cp;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 646
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_0

    .line 651
    :sswitch_15
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->T:D

    cmpg-double v0, v0, v7

    if-gez v0, :cond_a

    .line 652
    iget-wide v0, p0, Lcom/aadhk/restpos/d/cd;->R:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_9

    .line 654
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->i()V

    .line 655
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->b()V

    .line 658
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->R:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 660
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->k:Landroid/widget/EditText;

    iget v1, p0, Lcom/aadhk/restpos/d/cd;->ae:I

    iget-wide v2, p0, Lcom/aadhk/restpos/d/cd;->S:D

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ad:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->F:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 666
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 668
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f0902c3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 671
    :cond_a
    invoke-direct {p0}, Lcom/aadhk/restpos/d/cd;->i()V

    .line 673
    const v0, 0x7f0b0198

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 674
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-boolean v1, p0, Lcom/aadhk/restpos/d/cd;->aE:Z

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setOpenDrawer(Z)V

    .line 675
    new-instance v0, Lcom/aadhk/product/library/a/c;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->b:Lcom/aadhk/product/library/a/b;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/c;-><init>(Lcom/aadhk/product/library/a/b;)V

    .line 676
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_c

    .line 677
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 690
    :cond_b
    :goto_1
    new-instance v0, Lcom/aadhk/product/library/a/c;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->c:Lcom/aadhk/product/library/a/b;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/c;-><init>(Lcom/aadhk/product/library/a/b;)V

    .line 691
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_f

    .line 692
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 679
    :cond_c
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 681
    :cond_d
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->aE:Z

    if-eqz v0, :cond_b

    .line 682
    new-instance v0, Lcom/aadhk/product/library/a/c;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->d:Lcom/aadhk/product/library/a/b;

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/c;-><init>(Lcom/aadhk/product/library/a/b;)V

    .line 683
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_e

    .line 684
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 686
    :cond_e
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 694
    :cond_f
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 473
    :sswitch_data_0
    .sparse-switch
        0x7f0b00ed -> :sswitch_13
        0x7f0b0183 -> :sswitch_8
        0x7f0b0184 -> :sswitch_9
        0x7f0b0185 -> :sswitch_a
        0x7f0b0186 -> :sswitch_c
        0x7f0b0187 -> :sswitch_5
        0x7f0b0188 -> :sswitch_6
        0x7f0b0189 -> :sswitch_7
        0x7f0b018a -> :sswitch_e
        0x7f0b018b -> :sswitch_2
        0x7f0b018c -> :sswitch_3
        0x7f0b018d -> :sswitch_4
        0x7f0b018e -> :sswitch_d
        0x7f0b018f -> :sswitch_f
        0x7f0b0190 -> :sswitch_0
        0x7f0b0191 -> :sswitch_1
        0x7f0b0192 -> :sswitch_b
        0x7f0b0193 -> :sswitch_14
        0x7f0b0194 -> :sswitch_11
        0x7f0b0195 -> :sswitch_10
        0x7f0b0196 -> :sswitch_12
        0x7f0b0197 -> :sswitch_15
        0x7f0b0198 -> :sswitch_15
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cd;->setHasOptionsMenu(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->am:Landroid/content/res/Resources;

    .line 132
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->aA:Lcom/aadhk/restpos/f/l;

    .line 133
    new-instance v0, Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->ab:Lcom/aadhk/restpos/e/f;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->g()Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    .line 135
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 196
    const v0, 0x7f0b0296

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->aB:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 200
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 201
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 239
    const v0, 0x7f030075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->r:Landroid/widget/LinearLayout;

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->e:Landroid/widget/EditText;

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->f:Landroid/widget/EditText;

    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->g:Landroid/widget/EditText;

    .line 244
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->h:Landroid/widget/EditText;

    .line 245
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->i:Landroid/widget/EditText;

    .line 246
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->k:Landroid/widget/EditText;

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->l:Landroid/widget/EditText;

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->m:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->n:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->o:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->p:Landroid/widget/LinearLayout;

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->q:Landroid/widget/LinearLayout;

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->t:Landroid/widget/Button;

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->u:Landroid/widget/Button;

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->v:Landroid/widget/Button;

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->w:Landroid/widget/Button;

    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->x:Landroid/widget/Button;

    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->y:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->z:Landroid/widget/Button;

    .line 264
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->A:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->B:Landroid/widget/Button;

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->C:Landroid/widget/Button;

    .line 267
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->D:Landroid/widget/Button;

    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->E:Landroid/widget/Button;

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->s:Landroid/widget/Button;

    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->K:Landroid/widget/Button;

    .line 271
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->M:Landroid/widget/Button;

    .line 272
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->N:Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->L:Landroid/widget/Button;

    .line 274
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->J:Landroid/widget/Button;

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->F:Landroid/widget/Button;

    .line 277
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    .line 279
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cd;->P:Landroid/widget/ImageButton;

    .line 282
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->D:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->P:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->M:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->N:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 303
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->H:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->I:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->af:Landroid/view/View;

    return-object v0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1071
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b017f

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->Z:Z

    .line 1073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/cd;->Y:Z

    .line 1074
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aadhk/restpos/d/cd;->aa:D

    .line 1076
    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0296

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->a()V

    .line 233
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 221
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0297

    if-ne v0, v1, :cond_2

    .line 222
    new-instance v0, Lcom/aadhk/restpos/c/af;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->ag:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getReceiptNote()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/af;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0902c2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/af;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/cq;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/cq;-><init>(Lcom/aadhk/restpos/d/cd;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/af;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/af;->show()V

    goto :goto_0

    .line 223
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b028a

    if-ne v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->an:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ak:Lcom/aadhk/restpos/b/r;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    .line 231
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cd;->ab:Lcom/aadhk/restpos/e/f;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cd;->W:Lcom/aadhk/restpos/bean/Order;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cd;->X:Ljava/util/List;

    iget-object v4, p0, Lcom/aadhk/restpos/d/cd;->ac:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;Ljava/lang/String;Z)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/d/cd;->az:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    goto :goto_1
.end method
