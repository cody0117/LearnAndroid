.class final Lcom/aadhk/restpos/wifidirect/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 101
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-static {v0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 103
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    iget-object v0, v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    iget-object v0, v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    iget-object v0, v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    iget-object v2, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-virtual {v2}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Press back to cancel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connecting to :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-static {v5}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/a;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-virtual {v0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/wifidirect/g;

    invoke-interface {v0, v1}, Lcom/aadhk/restpos/wifidirect/g;->a(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 119
    return-void
.end method
