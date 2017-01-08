.class public abstract Lcom/aadhk/restpos/d/dh;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/widget/ImageButton;

.field private E:Landroid/widget/ImageButton;

.field private F:Landroid/widget/ImageButton;

.field private G:Landroid/widget/ImageButton;

.field private H:Landroid/widget/ImageButton;

.field private I:Landroid/widget/ImageButton;

.field private J:Landroid/widget/ImageButton;

.field private K:Landroid/widget/ImageButton;

.field private L:Landroid/widget/CheckBox;

.field private M:Landroid/widget/CheckBox;

.field private N:Landroid/widget/CheckBox;

.field private O:Landroid/widget/CheckBox;

.field private P:Landroid/widget/Spinner;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Lcom/aadhk/restpos/e/f;

.field private V:Lcom/aadhk/restpos/bean/Order;

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private X:Lcom/aadhk/restpos/bean/Customer;

.field private Y:D

.field private Z:Ljava/lang/String;

.field private a:Landroid/widget/EditText;

.field private aa:Ljava/lang/String;

.field protected b:Landroid/widget/EditText;

.field protected c:Landroid/widget/EditText;

.field protected d:Landroid/widget/EditText;

.field protected e:Landroid/widget/EditText;

.field protected f:Landroid/content/res/Resources;

.field protected g:Landroid/view/View;

.field protected h:Lcom/aadhk/restpos/PrinterActivity;

.field protected i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field protected j:Lcom/aadhk/restpos/b/r;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field m:Lcom/aadhk/product/library/a/b;

.field n:Landroid/text/TextWatcher;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 260
    new-instance v0, Lcom/aadhk/restpos/d/dk;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/dk;-><init>(Lcom/aadhk/restpos/d/dh;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->m:Lcom/aadhk/product/library/a/b;

    .line 500
    new-instance v0, Lcom/aadhk/restpos/d/dm;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/dm;-><init>(Lcom/aadhk/restpos/d/dh;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->n:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->U:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->V:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/dh;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->W:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/dh;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->X:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/dh;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/dh;)D
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/aadhk/restpos/d/dh;->Y:D

    return-wide v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/dh;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->P:Landroid/widget/Spinner;

    return-object v0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const v4, 0x7f090055

    const/4 v0, 0x0

    .line 528
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    iget-object v3, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 530
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 556
    :goto_0
    return v0

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 545
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 556
    goto :goto_0
.end method

.method private i()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 5

    .prologue
    .line 560
    new-instance v0, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 561
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 562
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 563
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setName(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->M:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTip(Z)V

    .line 567
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 569
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    iget-object v3, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 572
    iget-object v4, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 574
    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 575
    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 576
    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 578
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 579
    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()V
    .locals 8

    .prologue
    const v4, 0x7f0b01e2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 305
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->f:Landroid/content/res/Resources;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 306
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v2, 0x7f0b01be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->P:Landroid/widget/Spinner;

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->P:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/a/bf;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v2, v3, v1}, Lcom/aadhk/restpos/a/bf;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->P:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/d/dl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/dl;-><init>(Lcom/aadhk/restpos/d/dh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 352
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->T:Landroid/widget/TextView;

    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    .line 355
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    .line 356
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->q:Landroid/widget/EditText;

    .line 357
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->r:Landroid/widget/EditText;

    .line 358
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->x:Landroid/widget/ImageButton;

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->y:Landroid/widget/ImageButton;

    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->z:Landroid/widget/ImageButton;

    .line 364
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->A:Landroid/widget/ImageButton;

    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->B:Landroid/widget/ImageButton;

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->C:Landroid/widget/ImageButton;

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->D:Landroid/widget/ImageButton;

    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->E:Landroid/widget/ImageButton;

    .line 369
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->F:Landroid/widget/ImageButton;

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->G:Landroid/widget/ImageButton;

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->H:Landroid/widget/ImageButton;

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->I:Landroid/widget/ImageButton;

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->J:Landroid/widget/ImageButton;

    .line 374
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->K:Landroid/widget/ImageButton;

    .line 375
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->B:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->L:Landroid/widget/CheckBox;

    .line 391
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->N:Landroid/widget/CheckBox;

    .line 392
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->M:Landroid/widget/CheckBox;

    .line 393
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    .line 397
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->Q:Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->P:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 407
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->L:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 414
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->N:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->M:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTip()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 416
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 419
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    .line 420
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    .line 421
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    .line 425
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "1"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 426
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "1"

    const-string v4, "100"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 427
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "1"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 428
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 429
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 430
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 431
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 433
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->b:Landroid/widget/EditText;

    .line 434
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->c:Landroid/widget/EditText;

    .line 435
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->d:Landroid/widget/EditText;

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->e:Landroid/widget/EditText;

    .line 437
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->R:Landroid/widget/TextView;

    .line 438
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->S:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->k:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->l:Landroid/widget/TextView;

    .line 452
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 468
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->R:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->S:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dh;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->a(Landroid/graphics/Bitmap;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v0

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :goto_1
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    const v1, 0x7f0b01ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const v4, 0x7f090055

    const/4 v0, 0x0

    .line 583
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    iget-object v3, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 621
    :goto_0
    return v0

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 609
    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 614
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 621
    goto :goto_0
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 625
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setName(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 627
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 630
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 632
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->L:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 633
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->M:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTip(Z)V

    .line 634
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->N:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 635
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 639
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    iget-object v3, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    iget-object v4, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 644
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 645
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 646
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 649
    return-void
.end method

.method public abstract e()Z
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->V:Lcom/aadhk/restpos/bean/Order;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->X:Lcom/aadhk/restpos/bean/Customer;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dh;->W:Ljava/util/List;

    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;->i()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/e/c;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->V:Lcom/aadhk/restpos/bean/Order;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->W:Ljava/util/List;

    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;->i()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected final g()V
    .locals 7

    .prologue
    const v6, 0x7f090121

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 666
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 667
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 669
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const v1, 0x7f090120

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    return-void

    .line 675
    :cond_0
    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f090242

    const-wide v9, 0x4068e00000000000L

    const-wide/high16 v7, 0x4048

    const-wide/high16 v4, 0x4024

    const/4 v6, 0x2

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->U:Lcom/aadhk/restpos/e/f;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    const-string v2, "A-00001"

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    invoke-static {}, Lcom/aadhk/restpos/f/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setStartTime(Ljava/lang/String;)V

    const-wide/high16 v2, 0x4068

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    invoke-virtual {v1, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    const-wide/high16 v2, 0x401c

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090180

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    invoke-virtual {v3, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    const-string v4, "2013-09-11 09:01"

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    const-string v4, "2013-09-11 10:01"

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setEndTime(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090181

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setNum(I)V

    invoke-virtual {v4, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    const-string v0, "2013-09-11 09:02"

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    const-string v0, "2013-09-11 10:02"

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setEndTime(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderItems(Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    invoke-virtual {v0, v9, v10}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    const-wide/high16 v2, 0x4069

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setChangeAmt(D)V

    const-string v2, "Manager"

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    const-string v2, "Cash"

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/dh;->V:Lcom/aadhk/restpos/bean/Order;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->V:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->W:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->e()Lcom/aadhk/restpos/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->j:Lcom/aadhk/restpos/b/r;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->f()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "com.aadhk.restpos.feature.kitchen"

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "com.aadhk.restpos.feature.bar"

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090244

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "com.aadhk.restpos.feature.receipt"

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090241

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 682
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PrinterActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    .line 683
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 684
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b01e2

    const/4 v2, 0x0

    .line 652
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->M:Landroid/widget/CheckBox;

    if-eq p1, v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->O:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 116
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 119
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->p:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 122
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 125
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->o:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 128
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 131
    :sswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 134
    :sswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 137
    :sswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->t:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 140
    :sswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 143
    :sswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->u:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 146
    :sswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 149
    :sswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->v:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 152
    :sswitch_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 155
    :sswitch_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->w:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 158
    :sswitch_e
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/aadhk/product/library/d;->j:I

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-nez v0, :cond_3

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aadhk/product/library/c/m;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v2, 0x7f0901f9

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v2, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v3, 0x7f090175

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 174
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 160
    goto :goto_1

    .line 181
    :cond_3
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v2, Lcom/aadhk/restpos/d/di;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/di;-><init>(Lcom/aadhk/restpos/d/dh;)V

    const v3, 0x7f09017a

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/dh;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 227
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 229
    :cond_4
    invoke-virtual {v0, v4}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 240
    :sswitch_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->L:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dh;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {v0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->c()V

    goto/16 :goto_0

    .line 243
    :cond_5
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dh;->a()V

    .line 245
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->finish()V

    goto/16 :goto_0

    .line 250
    :sswitch_10
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dh;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 255
    :sswitch_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->b()V

    goto/16 :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0056 -> :sswitch_f
        0x7f0b0160 -> :sswitch_10
        0x7f0b01ee -> :sswitch_e
        0x7f0b01f6 -> :sswitch_0
        0x7f0b01f7 -> :sswitch_1
        0x7f0b01f8 -> :sswitch_2
        0x7f0b01f9 -> :sswitch_3
        0x7f0b01fa -> :sswitch_4
        0x7f0b01fb -> :sswitch_5
        0x7f0b01fc -> :sswitch_6
        0x7f0b01fd -> :sswitch_7
        0x7f0b01fe -> :sswitch_8
        0x7f0b01ff -> :sswitch_9
        0x7f0b0200 -> :sswitch_a
        0x7f0b0201 -> :sswitch_b
        0x7f0b0202 -> :sswitch_c
        0x7f0b0203 -> :sswitch_d
        0x7f0b0204 -> :sswitch_11
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dh;->f:Landroid/content/res/Resources;

    .line 98
    return-void
.end method
