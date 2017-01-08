.class public abstract Lcom/aadhk/restpos/d/gn;
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

.field private L:Landroid/widget/ImageButton;

.field private M:Landroid/widget/CheckBox;

.field private N:Landroid/widget/CheckBox;

.field private O:Landroid/widget/CheckBox;

.field private P:Landroid/widget/Spinner;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Lcom/aadhk/restpos/e/g;

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

.field private ab:[Ljava/lang/String;

.field private ac:[Ljava/lang/Boolean;

.field protected b:Landroid/widget/EditText;

.field protected c:Landroid/widget/EditText;

.field protected d:Landroid/widget/EditText;

.field protected e:Landroid/widget/EditText;

.field protected f:Landroid/content/res/Resources;

.field protected g:Landroid/view/View;

.field protected h:Lcom/aadhk/restpos/PrinterActivity;

.field protected i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field protected l:Lcom/aadhk/restpos/g/u;

.field protected m:Lcom/aadhk/restpos/util/r;

.field n:Lcom/aadhk/product/library/a/c;

.field o:Landroid/text/TextWatcher;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 255
    new-instance v0, Lcom/aadhk/restpos/d/gq;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/gq;-><init>(Lcom/aadhk/restpos/d/gn;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->n:Lcom/aadhk/product/library/a/c;

    .line 512
    new-instance v0, Lcom/aadhk/restpos/d/gs;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/gs;-><init>(Lcom/aadhk/restpos/d/gn;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->o:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->U:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->V:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/gn;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->W:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/gn;)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->X:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/gn;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/gn;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/aadhk/restpos/d/gn;->Y:D

    return-wide v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/gn;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->P:Landroid/widget/Spinner;

    return-object v0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const v4, 0x7f080085

    const/4 v0, 0x0

    .line 541
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 543
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 569
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 569
    goto :goto_0
.end method

.method private i()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 5

    .prologue
    .line 574
    new-instance v0, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 576
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 577
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrinterName(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 583
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    iget-object v4, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 588
    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 589
    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 590
    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 592
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 593
    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()V
    .locals 12

    .prologue
    const v11, 0x7f090236

    const v10, 0x7f090259

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 300
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 301
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/GridView;

    .line 302
    new-instance v0, Lcom/aadhk/restpos/a/c;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->ac:[Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/aadhk/restpos/d/gn;->ab:[Ljava/lang/String;

    iget-object v5, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/restpos/a/c;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Boolean;[Ljava/lang/String;Lcom/aadhk/restpos/util/r;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->f:Landroid/content/res/Resources;

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v2, 0x7f090212

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->P:Landroid/widget/Spinner;

    .line 306
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->P:Landroid/widget/Spinner;

    new-instance v2, Lcom/aadhk/restpos/a/bn;

    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v2, v3, v1}, Lcom/aadhk/restpos/a/bn;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->P:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/d/gr;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/gr;-><init>(Lcom/aadhk/restpos/d/gn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->T:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    .line 364
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->r:Landroid/widget/EditText;

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->s:Landroid/widget/EditText;

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->y:Landroid/widget/ImageButton;

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->z:Landroid/widget/ImageButton;

    .line 372
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->A:Landroid/widget/ImageButton;

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->B:Landroid/widget/ImageButton;

    .line 374
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->C:Landroid/widget/ImageButton;

    .line 375
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->D:Landroid/widget/ImageButton;

    .line 376
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->E:Landroid/widget/ImageButton;

    .line 377
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->F:Landroid/widget/ImageButton;

    .line 378
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->G:Landroid/widget/ImageButton;

    .line 379
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->H:Landroid/widget/ImageButton;

    .line 380
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->I:Landroid/widget/ImageButton;

    .line 381
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090256

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->J:Landroid/widget/ImageButton;

    .line 382
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->K:Landroid/widget/ImageButton;

    .line 383
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->L:Landroid/widget/ImageButton;

    .line 384
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->B:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->L:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->M:Landroid/widget/CheckBox;

    .line 400
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->N:Landroid/widget/CheckBox;

    .line 402
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    .line 406
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->Q:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->P:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 417
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrinterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->M:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->N:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 426
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    .line 430
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    .line 431
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    .line 432
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    .line 435
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "1"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "1"

    const-string v4, "100"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 437
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "1"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 438
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 439
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 440
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 441
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/k;

    const-string v3, "0"

    const-string v4, "50"

    invoke-direct {v2, v3, v4}, Lcom/aadhk/product/library/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 443
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->b:Landroid/widget/EditText;

    .line 444
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->c:Landroid/widget/EditText;

    .line 445
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->d:Landroid/widget/EditText;

    .line 446
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->e:Landroid/widget/EditText;

    .line 447
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->R:Landroid/widget/TextView;

    .line 448
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->S:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->j:Landroid/widget/TextView;

    .line 460
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->k:Landroid/widget/TextView;

    .line 462
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->R:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->S:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gn;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->a(Landroid/graphics/Bitmap;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v0

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f09023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :goto_1
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    const v1, 0x7f090220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const v4, 0x7f080085

    const/4 v0, 0x0

    .line 598
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 600
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 636
    :goto_0
    return v0

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 609
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 615
    :cond_2
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 620
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 624
    :cond_3
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 636
    goto :goto_0
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 641
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrinterName(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 643
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 646
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 648
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->M:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 650
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->N:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 651
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 655
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 658
    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    iget-object v4, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 660
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 661
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 662
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 664
    return-void
.end method

.method public abstract e()Z
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->V:Lcom/aadhk/restpos/bean/Order;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->X:Lcom/aadhk/restpos/bean/Customer;

    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->W:Ljava/util/List;

    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;->i()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/e/d;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->V:Lcom/aadhk/restpos/bean/Order;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->W:Ljava/util/List;

    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;->i()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/e/a;->a(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/POSPrinterSetting;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected final g()V
    .locals 7

    .prologue
    const v6, 0x7f080153

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 680
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 681
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 683
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const v1, 0x7f080152

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 691
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    return-void

    .line 689
    :cond_0
    invoke-virtual {p0, v6}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

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
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    new-instance v0, Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->U:Lcom/aadhk/restpos/e/g;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

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

    const v3, 0x7f0801b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    const-wide v2, 0x4068e00000000000L

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    invoke-virtual {v1, v11}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    invoke-static {}, Lcom/aadhk/restpos/util/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    const-wide/high16 v2, 0x4068

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    const-wide/high16 v2, 0x4024

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    const-wide/high16 v2, 0x401c

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    const-wide/high16 v2, 0x4024

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    const-wide/high16 v4, 0x4048

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    const-string v4, "2013-09-11 09:01"

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    const-string v4, "2013-09-11 10:01"

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setEndTime(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    const-wide/high16 v5, 0x4048

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    const-string v5, "2013-09-11 09:02"

    invoke-virtual {v3, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    const-string v5, "2013-09-11 10:02"

    invoke-virtual {v3, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setEndTime(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderItems(Ljava/util/List;)V

    new-instance v2, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    const-wide v3, 0x4068e00000000000L

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    const-wide/high16 v3, 0x4069

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    const-wide/high16 v3, 0x3ff0

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setChangeAmt(D)V

    const v3, 0x7f080336

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    const v3, 0x7f080309

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/gn;->V:Lcom/aadhk/restpos/bean/Order;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->V:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->W:Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->e()Lcom/aadhk/restpos/g/u;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->l:Lcom/aadhk/restpos/g/u;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->f()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 110
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "prefDisplayTableName"

    aput-object v2, v0, v1

    const-string v1, "prefDisplayWaiterName"

    aput-object v1, v0, v8

    const-string v1, "prefDisplayOrderNumber"

    aput-object v1, v0, v7

    const-string v1, "prefDisplayTaxNumber"

    aput-object v1, v0, v9

    const-string v1, "prefDisplayOrderTime"

    aput-object v1, v0, v10

    const-string v1, "prefDisplayEnableTip"

    aput-object v1, v0, v11

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->ab:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->z()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->D()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->m:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->E()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v11

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->ac:[Ljava/lang/Boolean;

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    if-ne v0, v7, :cond_1

    const-string v0, "com.aadhk.restpos.feature.kitchen"

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08029e

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    if-ne v0, v10, :cond_2

    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08029e

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    if-ne v0, v9, :cond_3

    const-string v0, "com.aadhk.restpos.feature.bar"

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0802a0

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    if-ne v0, v8, :cond_0

    const-string v0, "com.aadhk.restpos.feature.receipt"

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08029d

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gn;->getString(I)Ljava/lang/String;

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
    .line 696
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PrinterActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    .line 697
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 698
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v1, 0x7f090236

    const/4 v2, 0x0

    .line 667
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->O:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 120
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 123
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->q:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 126
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 129
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->p:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 132
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 135
    :sswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 138
    :sswitch_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 141
    :sswitch_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->u:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 144
    :sswitch_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 147
    :sswitch_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->v:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 150
    :sswitch_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 153
    :sswitch_b
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->w:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 156
    :sswitch_c
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 159
    :sswitch_d
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->x:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/util/w;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 162
    :sswitch_e
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gn;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v0, "connectivity"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/aadhk/product/library/d;->j:I

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-nez v0, :cond_3

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aadhk/product/library/c/m;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080236

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v3, 0x7f0801aa

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 178
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 164
    goto :goto_1

    .line 184
    :cond_3
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/go;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/go;-><init>(Lcom/aadhk/restpos/d/gn;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 225
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 234
    :sswitch_f
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->M:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gn;->aa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {v0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    :cond_4
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gn;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gn;->a()V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->finish()V

    goto/16 :goto_0

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->c()V

    goto/16 :goto_0

    .line 245
    :sswitch_10
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gn;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 250
    :sswitch_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->b()V

    goto/16 :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x7f09005a -> :sswitch_f
        0x7f0901aa -> :sswitch_10
        0x7f090242 -> :sswitch_e
        0x7f09024b -> :sswitch_0
        0x7f09024c -> :sswitch_1
        0x7f09024d -> :sswitch_2
        0x7f09024e -> :sswitch_3
        0x7f09024f -> :sswitch_4
        0x7f090250 -> :sswitch_5
        0x7f090251 -> :sswitch_6
        0x7f090252 -> :sswitch_7
        0x7f090253 -> :sswitch_8
        0x7f090254 -> :sswitch_9
        0x7f090255 -> :sswitch_a
        0x7f090256 -> :sswitch_b
        0x7f090257 -> :sswitch_c
        0x7f090258 -> :sswitch_d
        0x7f09025a -> :sswitch_11
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gn;->f:Landroid/content/res/Resources;

    .line 100
    return-void
.end method
