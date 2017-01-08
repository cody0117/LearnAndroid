.class final Lcom/aadhk/restpos/d/gx;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gw;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gw;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/aadhk/restpos/d/gx;->a:Lcom/aadhk/restpos/d/gw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/gx;->a:Lcom/aadhk/restpos/d/gw;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gw;->a(Lcom/aadhk/restpos/d/gw;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/gx;->a:Lcom/aadhk/restpos/d/gw;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gw;->a(Lcom/aadhk/restpos/d/gw;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0
.end method
