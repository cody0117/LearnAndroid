.class Lcom/google/analytics/tracking/android/GAServiceProxy$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    #calls: Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$000(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    .line 199
    return-void
.end method
