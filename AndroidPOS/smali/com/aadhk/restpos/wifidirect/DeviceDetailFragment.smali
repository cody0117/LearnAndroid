.class public Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;
.super Landroid/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# static fields
.field private static e:Lcom/aadhk/restpos/WiFiDirectActivity;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field private b:Landroid/view/View;

.field private c:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private d:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private f:Lcom/aadhk/restpos/g/h;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    .line 77
    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->c:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 350
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 353
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 354
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 363
    :goto_1
    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 357
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b()Lcom/aadhk/restpos/WiFiDirectActivity;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->e:Lcom/aadhk/restpos/WiFiDirectActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Lcom/aadhk/restpos/g/h;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->f:Lcom/aadhk/restpos/g/h;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/wifidirect/f;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/wifidirect/f;-><init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;B)V

    sget-object v2, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->e:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 145
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    const-string v1, "Sending: listOrder"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/aadhk/restpos/DataTransferService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "com.android.wifidirect.SEND_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    const-string v2, "kitchen"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    const-string v2, "go_host"

    iget-object v3, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->d:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "go_port"

    const/16 v3, 0x231c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Lcom/aadhk/restpos/g/h;

    sget-object v1, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->e:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/g/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->f:Lcom/aadhk/restpos/g/h;

    .line 86
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/WiFiDirectActivity;

    sput-object v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->e:Lcom/aadhk/restpos/WiFiDirectActivity;

    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    return-void
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0902f9

    const v5, 0x7f0902f3

    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->d:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 189
    sget-object v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->e:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-static {p1}, Lcom/aadhk/restpos/WiFiDirectActivity;->a(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 190
    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08038b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080387

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Group Owner IP - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_4

    .line 204
    new-instance v0, Lcom/aadhk/restpos/wifidirect/d;

    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/wifidirect/d;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/wifidirect/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    :cond_1
    :goto_1
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0800a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_4
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->e:Lcom/aadhk/restpos/WiFiDirectActivity;

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->a(Z)V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    const v0, 0x7f0300e3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/wifidirect/a;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/wifidirect/a;-><init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/wifidirect/b;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/wifidirect/b;-><init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    const v1, 0x7f0902f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/wifidirect/c;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/wifidirect/c;-><init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b:Landroid/view/View;

    return-object v0
.end method
