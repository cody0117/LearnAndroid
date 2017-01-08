.class public final Lcom/google/android/a/a/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/google/android/a/a/f;

.field private c:Ljava/security/PublicKey;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/a/a/p;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/a/a/n;",
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

    sput-object v0, Lcom/google/android/a/a/i;->a:Ljava/security/SecureRandom;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/a/p;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/i;->i:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/i;->j:Ljava/util/Queue;

    .line 88
    iput-object p1, p0, Lcom/google/android/a/a/i;->d:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/google/android/a/a/i;->e:Lcom/google/android/a/a/p;

    .line 90
    invoke-static {p3}, Lcom/google/android/a/a/i;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/i;->c:Ljava/security/PublicKey;

    .line 91
    iget-object v0, p0, Lcom/google/android/a/a/i;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/i;->g:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/google/android/a/a/i;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/i;->h:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/a/a/i;->f:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/i;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/a/a/i;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 343
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 342
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter

    .prologue
    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :catch_2
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/android/a/a/i;Lcom/google/android/a/a/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/a/a/i;->b(Lcom/google/android/a/a/n;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/a/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/i;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/a/a/i;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/google/android/a/a/i;->b()V
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

.method static synthetic b(Lcom/google/android/a/a/i;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/a/a/i;->i:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/f;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/i;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/f;

    .line 313
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/a/a/i;Lcom/google/android/a/a/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/n;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/google/android/a/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/i;->e:Lcom/google/android/a/a/p;

    const/16 v1, 0x123

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/a/a/p;->a(ILcom/google/android/a/a/r;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/a/a/i;->e:Lcom/google/android/a/a/p;

    invoke-interface {v0}, Lcom/google/android/a/a/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/google/android/a/a/n;->a()Lcom/google/android/a/a/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/a/a/m;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/a/a/n;->a()Lcom/google/android/a/a/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/a/a/m;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/a/a/i;)Ljava/security/PublicKey;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/a/a/i;->c:Ljava/security/PublicKey;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/a/a/i;->b()V

    .line 325
    iget-object v0, p0, Lcom/google/android/a/a/i;->f:Landroid/os/Handler;

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
    invoke-static {p2}, Lcom/google/android/a/a/g;->a(Landroid/os/IBinder;)Lcom/google/android/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/f;

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/google/android/a/a/i;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/a/n;
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

    invoke-virtual {v0}, Lcom/google/android/a/a/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/f;

    invoke-virtual {v0}, Lcom/google/android/a/a/n;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/google/android/a/a/n;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/a/a/j;

    invoke-direct {v5, p0, v0}, Lcom/google/android/a/a/j;-><init>(Lcom/google/android/a/a/i;Lcom/google/android/a/a/n;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/a/a/f;->a(JLjava/lang/String;Lcom/google/android/a/a/c;)V

    iget-object v1, p0, Lcom/google/android/a/a/i;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/a/a/i;->b(Lcom/google/android/a/a/n;)V
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
    iput-object v0, p0, Lcom/google/android/a/a/i;->b:Lcom/google/android/a/a/f;
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
