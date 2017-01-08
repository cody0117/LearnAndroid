.class final Lcom/aadhk/restpos/es;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/WiFiDirectActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/WiFiDirectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/aadhk/restpos/es;->a:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2
    .parameter

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnect failed. Reason :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
