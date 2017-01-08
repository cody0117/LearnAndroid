.class public final Lcom/aadhk/restpos/d/gj;
.super Lcom/aadhk/restpos/d/gn;
.source "ProGuard"


# instance fields
.field a:Lcom/aadhk/product/library/a/c;

.field private p:Landroid/widget/Spinner;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/aadhk/restpos/a/bn;

.field private s:[Ljava/lang/String;

.field private t:Landroid/bluetooth/BluetoothAdapter;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/d/gj;->v:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/gj;->w:I

    .line 113
    new-instance v0, Lcom/aadhk/restpos/d/gl;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/gl;-><init>(Lcom/aadhk/restpos/d/gj;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->a:Lcom/aadhk/product/library/a/c;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gj;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/aadhk/restpos/d/gj;->w:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/aadhk/restpos/d/gj;->w:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gj;Lcom/aadhk/restpos/a/bn;)Lcom/aadhk/restpos/a/bn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/d/gj;->r:Lcom/aadhk/restpos/a/bn;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gj;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/d/gj;->u:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gj;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/d/gj;->s:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/gj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/gj;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->t:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/gj;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/gj;)Lcom/aadhk/restpos/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->r:Lcom/aadhk/restpos/a/bn;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/gj;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->p:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/gm;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/gm;-><init>(Lcom/aadhk/restpos/d/gj;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->g:Landroid/view/View;

    const v1, 0x7f090247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->q:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->g:Landroid/view/View;

    const v1, 0x7f090248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->p:Landroid/widget/Spinner;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->s:[Ljava/lang/String;

    .line 73
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/a/bn;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gj;->s:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/a/bn;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->r:Lcom/aadhk/restpos/a/bn;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->p:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gj;->r:Lcom/aadhk/restpos/a/bn;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->p:Landroid/widget/Spinner;

    new-instance v1, Lcom/aadhk/restpos/d/gk;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/gk;-><init>(Lcom/aadhk/restpos/d/gj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 90
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->b()V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->g:Landroid/view/View;

    const v1, 0x7f09022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gj;->g()V

    .line 95
    return-void

    .line 70
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->s:[Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080239

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/gj;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->p:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->requestFocus()Z

    .line 169
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->d()V

    .line 178
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->d()V

    .line 188
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/gn;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gj;->b()V

    .line 50
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gj;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->q:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 105
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->t:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->t:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/d/gj;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gj;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    :goto_0
    return-void

    .line 109
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
    .line 54
    const v0, 0x7f030091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gj;->g:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/gj;->g:Landroid/view/View;

    return-object v0
.end method
