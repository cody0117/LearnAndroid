.class public final Lcom/aadhk/restpos/d/dp;
.super Lcom/aadhk/restpos/d/dh;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private o:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dh;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dp;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->o:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->j:Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->c(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 43
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->g:Landroid/view/View;

    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dp;->o:Landroid/widget/EditText;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->h:Lcom/aadhk/restpos/PrinterActivity;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 50
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->o:Landroid/widget/EditText;

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 56
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/d/dq;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/dq;-><init>(Lcom/aadhk/restpos/d/dp;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dp;->a:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dp;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/PrinterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    :cond_1
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->b()V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    return-void
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dp;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 88
    const v2, 0x7f090165

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/dp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 102
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 102
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->d()V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setUsbName(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dp;->d()V

    .line 122
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/aadhk/restpos/d/dh;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dp;->b()V

    .line 33
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const v0, 0x7f03007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dp;->g:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/aadhk/restpos/d/dh;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/dp;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dp;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    :cond_0
    return-void
.end method
