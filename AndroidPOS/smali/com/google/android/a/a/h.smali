.class public final Lcom/google/android/a/a/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/google/android/a/a/e;

.field private c:Ljava/security/PublicKey;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/a/a/n;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/a/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/a/a/h;->a:Ljava/security/SecureRandom;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/h;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/a/a/h;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/a/a/h;->b(Lcom/google/android/a/a/m;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/a/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/h;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/a/a/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/google/android/a/a/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/a/a/h;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/a/a/h;->g:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/a/a/h;->b:Lcom/google/android/a/a/e;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/h;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/a/h;->b:Lcom/google/android/a/a/e;

    .line 313
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/a/a/h;->a(Lcom/google/android/a/a/m;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/google/android/a/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/h;->e:Lcom/google/android/a/a/n;

    .line 294
    iget-object v0, p0, Lcom/google/android/a/a/h;->e:Lcom/google/android/a/a/n;

    invoke-interface {v0}, Lcom/google/android/a/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/google/android/a/a/m;->a()Lcom/google/android/a/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/a/a/m;->a()Lcom/google/android/a/a/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/a/a/h;)Ljava/security/PublicKey;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/a/a/h;->c:Ljava/security/PublicKey;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/a/a/h;->b()V

    .line 325
    iget-object v0, p0, Lcom/google/android/a/a/h;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/a/a/f;->a(Landroid/os/IBinder;)Lcom/google/android/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/h;->b:Lcom/google/android/a/a/e;

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/google/android/a/a/h;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling checkLicense on service for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/a/a/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/a/a/h;->b:Lcom/google/android/a/a/e;

    invoke-virtual {v0}, Lcom/google/android/a/a/m;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/google/android/a/a/m;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/a/a/i;

    invoke-direct {v5, p0, v0}, Lcom/google/android/a/a/i;-><init>(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/a/a/e;->a(JLjava/lang/String;Lcom/google/android/a/a/b;)V

    iget-object v1, p0, Lcom/google/android/a/a/h;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/a/a/h;->b(Lcom/google/android/a/a/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/a/a/h;->b:Lcom/google/android/a/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
