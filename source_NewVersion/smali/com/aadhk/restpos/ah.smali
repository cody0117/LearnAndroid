.class final Lcom/aadhk/restpos/ah;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/LoginActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/aadhk/restpos/ah;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const v0, 0x7f090120

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    :cond_0
    return-void
.end method
