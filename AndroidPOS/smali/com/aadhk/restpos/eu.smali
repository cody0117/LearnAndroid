.class final Lcom/aadhk/restpos/eu;
.super Landroid/widget/ArrayAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/WiFiDirectActivity;

.field private b:Ljava/util/List;
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
.method public constructor <init>(Lcom/aadhk/restpos/WiFiDirectActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lcom/aadhk/restpos/eu;->a:Lcom/aadhk/restpos/WiFiDirectActivity;

    .line 361
    const v0, 0x7f0300e6

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 362
    iput-object p3, p0, Lcom/aadhk/restpos/eu;->b:Ljava/util/List;

    .line 363
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    .line 368
    if-nez p2, :cond_0

    .line 369
    iget-object v0, p0, Lcom/aadhk/restpos/eu;->a:Lcom/aadhk/restpos/WiFiDirectActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/WiFiDirectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 371
    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/eu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 374
    if-eqz v0, :cond_2

    .line 375
    const v1, 0x7f0902fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 376
    const v2, 0x7f0902ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 377
    if-eqz v1, :cond_1

    .line 378
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_1
    if-eqz v2, :cond_2

    .line 381
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-static {v0}, Lcom/aadhk/restpos/WiFiDirectActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_2
    return-object p2
.end method
