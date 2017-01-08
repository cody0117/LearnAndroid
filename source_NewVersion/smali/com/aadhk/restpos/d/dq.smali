.class final Lcom/aadhk/restpos/d/dq;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dp;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dp;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dp;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dp;->a(Lcom/aadhk/restpos/d/dp;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dp;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dp;->a(Lcom/aadhk/restpos/d/dp;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0
.end method
