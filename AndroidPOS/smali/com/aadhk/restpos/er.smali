.class final Lcom/aadhk/restpos/er;
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
    .line 193
    iput-object p1, p0, Lcom/aadhk/restpos/er;->a:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/er;->a:Lcom/aadhk/restpos/WiFiDirectActivity;

    const-string v1, "Connect failed. Retry."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method
