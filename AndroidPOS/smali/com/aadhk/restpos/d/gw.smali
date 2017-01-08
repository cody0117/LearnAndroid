.class public final Lcom/aadhk/restpos/d/gw;
.super Lcom/aadhk/restpos/d/gn;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private p:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/aadhk/restpos/d/gn;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gw;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->p:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/gy;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/gy;-><init>(Lcom/aadhk/restpos/d/gw;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 49
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->g:Landroid/view/View;

    const v1, 0x7f09021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gw;->p:Landroid/widget/EditText;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 56
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->p:Landroid/widget/EditText;

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 62
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/d/gx;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/gx;-><init>(Lcom/aadhk/restpos/d/gw;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gw;->a:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gw;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/PrinterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    :cond_1
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->b()V

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 93
    const v2, 0x7f080194

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 94
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 107
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->b:Landroid/widget/EditText;

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/gw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 107
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->d()V

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUsbName(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gw;->d()V

    .line 127
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/gn;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gw;->b()V

    .line 39
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const v0, 0x7f030097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gw;->g:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/aadhk/restpos/d/gn;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gw;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_0
    return-void
.end method
