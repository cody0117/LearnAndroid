.class final Lcom/aadhk/restpos/eq;
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
    .line 165
    iput-object p1, p0, Lcom/aadhk/restpos/eq;->a:Lcom/aadhk/restpos/WiFiDirectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 0
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
