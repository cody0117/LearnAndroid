.class Lcom/google/analytics/tracking/android/EasyTracker$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/analytics/tracking/android/Clock;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/EasyTracker;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$1;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method