.class Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/EasyTracker;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;Lcom/google/analytics/tracking/android/EasyTracker$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    const/4 v1, 0x0

    #setter for: Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->access$102(Lcom/google/analytics/tracking/android/EasyTracker;Z)Z

    .line 659
    return-void
.end method
