.class public final Lcom/aadhk/restpos/d/gf;
.super Lcom/aadhk/restpos/d/gn;
.source "ProGuard"


# instance fields
.field a:Lcom/aadhk/product/library/a/c;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/Spinner;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/aadhk/restpos/a/bn;

.field private t:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;-><init>()V

    .line 109
    new-instance v0, Lcom/aadhk/restpos/d/gh;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/gh;-><init>(Lcom/aadhk/restpos/d/gf;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->a:Lcom/aadhk/product/library/a/c;

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gf;Lcom/aadhk/restpos/a/bn;)Lcom/aadhk/restpos/a/bn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aadhk/restpos/d/gf;->s:Lcom/aadhk/restpos/a/bn;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->t:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gf;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aadhk/restpos/d/gf;->t:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/gf;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->s:Lcom/aadhk/restpos/a/bn;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/gf;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->q:Landroid/widget/Spinner;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    :goto_0
    return v0

    .line 147
    :cond_0
    sget-object v2, Lcom/aadhk/product/library/c/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    const v2, 0x7f080237

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/gi;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/gi;-><init>(Lcom/aadhk/restpos/d/gf;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gf;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 61
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->g:Landroid/view/View;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->g:Landroid/view/View;

    const v1, 0x7f090247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->r:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->g:Landroid/view/View;

    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->q:Landroid/widget/Spinner;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->t:[Ljava/lang/String;

    .line 77
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/a/bn;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gf;->t:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/a/bn;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->s:Lcom/aadhk/restpos/a/bn;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->q:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->s:Lcom/aadhk/restpos/a/bn;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->q:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/d/gg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/gg;-><init>(Lcom/aadhk/restpos/d/gf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 90
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->b()V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->g:Landroid/view/View;

    const v1, 0x7f09022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gf;->g()V

    .line 95
    return-void

    .line 74
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->t:[Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gf;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v2, 0x7f080238

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gf;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 165
    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->q:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->requestFocus()Z

    goto :goto_0

    .line 169
    :cond_1
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->d()V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gf;->d()V

    .line 185
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/gn;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gf;->b()V

    .line 51
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->r:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gf;->h:Lcom/aadhk/restpos/PrinterActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 102
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/gn;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const v0, 0x7f030090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->g:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->g:Landroid/view/View;

    return-object v0
.end method
