.class public final Lcom/google/android/gms/ads/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/common/h;

.field b:Lcom/google/android/gms/internal/to;

.field c:Z

.field d:Ljava/lang/Object;

.field e:Lcom/google/android/gms/ads/a/c;

.field final f:J

.field private final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/a/a;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/a/a;->d:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/a/a;->g:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/ads/a/a;->f:J

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/common/h;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/f;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/d; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lcom/google/android/gms/common/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/h;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/d;-><init>(I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/android/gms/common/h;)Lcom/google/android/gms/internal/to;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/h;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/tp;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/to;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Z)V
    .locals 1

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/internal/px;->c(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/common/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/a/a;->a:Lcom/google/android/gms/common/h;

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->a:Lcom/google/android/gms/common/h;

    invoke-static {v0}, Lcom/google/android/gms/ads/a/a;->a(Lcom/google/android/gms/common/h;)Lcom/google/android/gms/internal/to;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/a/a;->b:Lcom/google/android/gms/internal/to;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/a/a;->d()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/ads/a/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->e:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->e:Lcom/google/android/gms/ads/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->e:Lcom/google/android/gms/ads/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/c;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/gms/ads/a/a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/a/c;

    iget-wide v2, p0, Lcom/google/android/gms/ads/a/a;->f:J

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/ads/a/c;-><init>(Lcom/google/android/gms/ads/a/a;J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/a/a;->e:Lcom/google/android/gms/ads/a/c;

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/a/a;->a(Z)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/a/b;
    .locals 4

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/internal/px;->c(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/a/a;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->e:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->e:Lcom/google/android/gms/ads/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/a/a;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->a:Lcom/google/android/gms/common/h;

    invoke-static {v0}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->b:Lcom/google/android/gms/internal/to;

    invoke-static {v0}, Lcom/google/android/gms/internal/px;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Lcom/google/android/gms/ads/a/b;

    iget-object v1, p0, Lcom/google/android/gms/ads/a/a;->b:Lcom/google/android/gms/internal/to;

    invoke-interface {v1}, Lcom/google/android/gms/internal/to;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/a/a;->b:Lcom/google/android/gms/internal/to;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/to;->a(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/a/b;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/a/a;->d()V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public final c()V
    .locals 2

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/internal/px;->c(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->a:Lcom/google/android/gms/common/h;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/a/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/a/a;->a:Lcom/google/android/gms/common/h;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/a/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/a/a;->b:Lcom/google/android/gms/internal/to;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/a/a;->a:Lcom/google/android/gms/common/h;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/a;->c()V

    return-void
.end method
