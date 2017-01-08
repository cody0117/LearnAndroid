.class public Lcom/aadhk/restpos/WiFiDirectActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/aadhk/restpos/wifidirect/g;


# instance fields
.field private a:Landroid/net/wifi/p2p/WifiP2pManager;

.field private o:Z

.field private p:Z

.field private final q:Landroid/content/IntentFilter;

.field private r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/app/ProgressDialog;

.field private v:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private w:Landroid/widget/ListView;

.field private x:Landroid/widget/TextView;

.field private y:Lcom/aadhk/restpos/eu;

.field private z:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->o:Z

    .line 68
    iput-boolean v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->p:Z

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->q:Landroid/content/IntentFilter;

    .line 72
    iput-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->s:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->t:Ljava/util/List;

    .line 75
    iput-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    .line 392
    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-static {p0}, Lcom/aadhk/restpos/WiFiDirectActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 268
    packed-switch p0, :pswitch_data_0

    .line 280
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    const-string v0, "Available"

    goto :goto_0

    .line 272
    :pswitch_1
    const-string v0, "Invited"

    goto :goto_0

    .line 274
    :pswitch_2
    const-string v0, "Connected"

    goto :goto_0

    .line 276
    :pswitch_3
    const-string v0, "Failed"

    goto :goto_0

    .line 278
    :pswitch_4
    const-string v0, "Unavailable"

    goto :goto_0

    .line 268
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
.method public final a()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/aadhk/restpos/es;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/es;-><init>(Lcom/aadhk/restpos/WiFiDirectActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 218
    return-void
.end method

.method public final a(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/aadhk/restpos/er;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/er;-><init>(Lcom/aadhk/restpos/WiFiDirectActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 205
    return-void
.end method

.method public final a(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 178
    iput-object p1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 179
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 180
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 181
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 183
    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 186
    :cond_0
    const-string v1, "Press back to cancel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connecting to :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    .line 187
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->a(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 189
    return-void
.end method

.method public final b(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->v:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 304
    const v0, 0x7f0902fa

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const v0, 0x7f0902fb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-static {v1}, Lcom/aadhk/restpos/WiFiDirectActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->z:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 310
    iget-boolean v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->o:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->z:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->z:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->o:Z

    .line 87
    return-void
.end method

.method public onChannelDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->p:Z

    if-nez v0, :cond_0

    .line 224
    const-string v0, "Channel lost. Trying again"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    iput-boolean v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->p:Z

    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/aadhk/restpos/WiFiDirectActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "Severe! Channel is probably lost premanently. Try Disable/Re-Enable P2P."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0300e4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->setContentView(I)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->q:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->q:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->q:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->q:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/aadhk/restpos/WiFiDirectActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 102
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->w:Landroid/widget/ListView;

    .line 103
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->x:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->w:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    new-instance v0, Lcom/aadhk/restpos/eu;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->t:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/aadhk/restpos/eu;-><init>(Lcom/aadhk/restpos/WiFiDirectActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->y:Lcom/aadhk/restpos/eu;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->w:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->y:Lcom/aadhk/restpos/eu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f090328

    .line 125
    invoke-virtual {p0}, Lcom/aadhk/restpos/WiFiDirectActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 126
    const v1, 0x7f0f0019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->z:Landroid/view/MenuItem;

    .line 128
    iget-boolean v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->o:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 131
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->y:Lcom/aadhk/restpos/eu;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/eu;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 342
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/aadhk/restpos/WiFiDirectActivity;->a()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->a(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-boolean v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->o:Z

    if-nez v0, :cond_1

    const v0, 0x7f08038a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const-string v1, "Press back to cancel"

    const-string v2, "finding peers"

    new-instance v5, Lcom/aadhk/restpos/et;

    invoke-direct {v5, p0}, Lcom/aadhk/restpos/et;-><init>(Lcom/aadhk/restpos/WiFiDirectActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/aadhk/restpos/eq;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/eq;-><init>(Lcom/aadhk/restpos/WiFiDirectActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f090328
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->t:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->y:Lcom/aadhk/restpos/eu;

    invoke-virtual {v0}, Lcom/aadhk/restpos/eu;->notifyDataSetChanged()V

    .line 327
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 113
    new-instance v0, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->r:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, v1, v2, p0}, Lcom/aadhk/restpos/wifidirect/WiFiDirectBroadcastReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/aadhk/restpos/WiFiDirectActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->s:Landroid/content/BroadcastReceiver;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->s:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/aadhk/restpos/WiFiDirectActivity;->q:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/WiFiDirectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method
