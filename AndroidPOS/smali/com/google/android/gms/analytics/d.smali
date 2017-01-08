.class public Lcom/google/android/gms/analytics/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/analytics/a;

.field private static volatile b:Z

.field private static c:Lcom/google/android/gms/analytics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/analytics/d;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/android/gms/analytics/b;
    .locals 2

    const-class v1, Lcom/google/android/gms/analytics/d;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/analytics/d;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/d;->c:Lcom/google/android/gms/analytics/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/e;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/d;->c:Lcom/google/android/gms/analytics/b;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/d;->c:Lcom/google/android/gms/analytics/b;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/analytics/a;->a()Lcom/google/android/gms/analytics/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    :cond_2
    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/a;->b()Lcom/google/android/gms/analytics/b;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/d;->a()Lcom/google/android/gms/analytics/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/d;->a()Lcom/google/android/gms/analytics/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
