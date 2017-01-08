.class public Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field private static c:Lcom/aadhk/restpos/WiFiDirectActivity;


# instance fields
.field private a:Landroid/net/wifi/p2p/WifiP2pManager;

.field private b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/aadhk/restpos/WiFiDirectActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 50
    iput-object p2, p0, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 51
    sput-object p3, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/WiFiDirectActivity;

    .line 52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v0, "wifi_p2p_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 66
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 68
    sget-object v1, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/WiFiDirectActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/WiFiDirectActivity;->b(Z)V

    .line 73
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P2P state changed - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    sget-object v1, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/WiFiDirectActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/WiFiDirectActivity;->b(Z)V

    goto :goto_0

    .line 74
    :cond_2
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    sget-object v2, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 82
    :cond_3
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v1, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/WiFiDirectActivity;

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->b(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1
.end method
