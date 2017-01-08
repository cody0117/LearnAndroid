.class final Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->dDebug(Ljava/lang/String;)I

    .line 173
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->dDebug(Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/b;

    move-result-object v1

    #setter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/b;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$002(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Lcom/google/android/gms/analytics/internal/b;)Lcom/google/android/gms/analytics/internal/b;

    .line 178
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #calls: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionSuccess()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$100(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #getter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$200(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #setter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #getter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$400(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;->onConnectionFailed(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->dDebug(Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    const/4 v1, 0x0

    #setter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #getter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$500(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onDisconnected()V

    .line 196
    return-void
.end method
