.class Lcom/google/analytics/tracking/android/AdHitIdGenerator;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mAdMobSdkInstalled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    const-string v0, "com.google.ads.AdRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 17
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z

    goto :goto_1
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z

    .line 26
    return-void
.end method


# virtual methods
.method getAdHitId()I
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->mAdMobSdkInstalled:Z

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/AdMobInfo;->getInstance()Lcom/google/analytics/tracking/android/AdMobInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/AdMobInfo;->generateAdHitId()I

    move-result v0

    goto :goto_0
.end method
