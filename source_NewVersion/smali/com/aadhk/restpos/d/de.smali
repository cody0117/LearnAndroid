.class public final Lcom/aadhk/restpos/d/de;
.super Lcom/aadhk/restpos/d/dh;
.source "ProGuard"


# instance fields
.field a:Lcom/aadhk/product/library/a/b;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/Spinner;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/aadhk/restpos/a/bf;

.field private s:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;-><init>()V

    .line 115
    new-instance v0, Lcom/aadhk/restpos/d/dg;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/dg;-><init>(Lcom/aadhk/restpos/d/de;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->a:Lcom/aadhk/product/library/a/b;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/de;Lcom/aadhk/restpos/a/bf;)Lcom/aadhk/restpos/a/bf;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aadhk/restpos/d/de;->r:Lcom/aadhk/restpos/a/bf;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/de;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/de;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aadhk/restpos/d/de;->s:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/de;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/de;)Lcom/aadhk/restpos/a/bf;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->r:Lcom/aadhk/restpos/a/bf;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/de;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->p:Landroid/widget/Spinner;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/de;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 161
    :goto_0
    return v0

    .line 154
    :cond_0
    sget-object v2, Lcom/aadhk/product/library/c/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    const v2, 0x7f0901fa

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/de;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->j:Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v1, "requireWifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v1, "requireWifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->g:Landroid/view/View;

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->g:Landroid/view/View;

    const v1, 0x7f0b01f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->q:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->g:Landroid/view/View;

    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->p:Landroid/widget/Spinner;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->s:[Ljava/lang/String;

    .line 77
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/a/bf;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/de;->s:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/a/bf;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->r:Lcom/aadhk/restpos/a/bf;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->p:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->r:Lcom/aadhk/restpos/a/bf;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->p:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/d/df;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/df;-><init>(Lcom/aadhk/restpos/d/de;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 92
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->b()V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->g:Landroid/view/View;

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/de;->g()V

    .line 97
    return-void

    .line 74
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->s:[Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Lcom/aadhk/restpos/d/de;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return v0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v2, 0x7f0901fb

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/de;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 171
    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->p:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->requestFocus()Z

    goto :goto_0

    .line 175
    :cond_1
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->d()V

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/de;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/de;->d()V

    .line 191
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/dh;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/de;->b()V

    .line 45
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->q:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/aadhk/restpos/d/de;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/de;->a:Lcom/aadhk/product/library/a/b;

    const v3, 0x7f0901d6

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/de;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 105
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {v0, v4}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 111
    :cond_2
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/dh;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/de;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/de;->g:Landroid/view/View;

    return-object v0
.end method
