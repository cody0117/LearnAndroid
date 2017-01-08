.class final Lcom/aadhk/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/aadhk/a/d;

.field private final synthetic b:Lcom/aadhk/a/i;


# direct methods
.method constructor <init>(Lcom/aadhk/a/d;Lcom/aadhk/a/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    iput-object p2, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    iget-boolean v0, v0, Lcom/aadhk/a/d;->d:Z

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    invoke-virtual {v0}, Lcom/aadhk/a/d;->c()V

    .line 244
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    .line 245
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    iget-object v0, v0, Lcom/aadhk/a/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    invoke-virtual {v1}, Lcom/aadhk/a/d;->c()V

    .line 250
    iget-object v1, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    iget-object v1, v1, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 251
    if-eqz v1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    new-instance v2, Lcom/aadhk/a/k;

    .line 253
    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 252
    invoke-interface {v0, v2}, Lcom/aadhk/a/i;->a(Lcom/aadhk/a/k;)V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aadhk/a/d;->f:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    iget-object v1, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    if-eqz v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    new-instance v2, Lcom/aadhk/a/k;

    const/16 v3, -0x3e9

    .line 276
    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    .line 275
    invoke-interface {v1, v2}, Lcom/aadhk/a/i;->a(Lcom/aadhk/a/k;)V

    .line 278
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 259
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In-app billing version 3 supported for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aadhk/a/d;->c()V

    .line 262
    iget-object v1, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    iget-object v1, v1, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 263
    if-nez v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    invoke-virtual {v0}, Lcom/aadhk/a/d;->c()V

    .line 265
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aadhk/a/d;->f:Z

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aadhk/a/d;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    iget-object v0, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/aadhk/a/e;->b:Lcom/aadhk/a/i;

    new-instance v1, Lcom/aadhk/a/k;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/aadhk/a/k;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aadhk/a/i;->a(Lcom/aadhk/a/k;)V

    goto/16 :goto_0

    .line 268
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aadhk/a/d;->c()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    invoke-virtual {v0}, Lcom/aadhk/a/d;->c()V

    .line 237
    iget-object v0, p0, Lcom/aadhk/a/e;->a:Lcom/aadhk/a/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/aadhk/a/d;->j:Lcom/android/vending/billing/IInAppBillingService;

    .line 238
    return-void
.end method
