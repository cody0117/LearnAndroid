.class public Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field private static c:Lcom/aadhk/restpos/KitchenActivity;


# instance fields
.field private a:Landroid/net/wifi/p2p/WifiP2pManager;

.field private b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/aadhk/restpos/KitchenActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 48
    iput-object p2, p0, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 49
    sput-object p3, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/KitchenActivity;

    .line 50
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 66
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    sget-object v2, Lcom/aadhk/restpos/wifidirect/KitchenWiFiDirectBroadcastReceiver;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_0
.end method
