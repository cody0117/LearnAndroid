.class public Lcom/aadhk/restpos/wifidirect/DeviceListFragment;
.super Landroid/app/ListFragment;
.source "ProGuard"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->c:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->a:Landroid/app/ProgressDialog;

    .line 50
    iput-object v1, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->b:Landroid/view/View;

    .line 194
    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Peer status :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Available"

    goto :goto_0

    :pswitch_1
    const-string v0, "Invited"

    goto :goto_0

    :pswitch_2
    const-string v0, "Connected"

    goto :goto_0

    :pswitch_3
    const-string v0, "Failed"

    goto :goto_0

    :pswitch_4
    const-string v0, "Unavailable"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Lcom/aadhk/restpos/wifidirect/h;

    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/restpos/wifidirect/h;-><init>(Lcom/aadhk/restpos/wifidirect/DeviceListFragment;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const v0, 0x7f0300e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->b:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 97
    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/wifidirect/g;

    invoke-interface {v1, v0}, Lcom/aadhk/restpos/wifidirect/g;->a(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 98
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/wifidirect/h;

    invoke-virtual {v0}, Lcom/aadhk/restpos/wifidirect/h;->notifyDataSetChanged()V

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_1
    return-void
.end method
