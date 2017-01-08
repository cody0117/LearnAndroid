.class public Lcom/google/android/gms/internal/oi;
.super Lcom/google/android/gms/internal/nm;


# static fields
.field private static e:Lcom/google/android/gms/ads/a/a;

.field private static f:Ljava/util/concurrent/CountDownLatch;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/oi;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/rw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/nm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/rw;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/oi;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ge;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ge;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/oi;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/rs;)V

    const-class v1, Lcom/google/android/gms/internal/oi;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/oi;->e:Lcom/google/android/gms/ads/a/a;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/ads/a/a;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/a/a;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/android/gms/internal/oi;->e:Lcom/google/android/gms/ads/a/a;

    new-instance v2, Lcom/google/android/gms/internal/oj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/oj;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/oj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/google/android/gms/internal/oi;

    new-instance v2, Lcom/google/android/gms/internal/sn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/sn;-><init>()V

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/oi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/rw;)V

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lcom/google/android/gms/ads/a/a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/oi;->e:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/oi;->g:Z

    return v0
.end method

.method static synthetic d()Lcom/google/android/gms/ads/a/a;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/oi;->e:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/oi;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private f()Lcom/google/android/gms/internal/ok;
    .locals 8

    const/16 v7, 0x10

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/gms/internal/oi;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/oi;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ok;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/ok;-><init>(Lcom/google/android/gms/internal/oi;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ok;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/ok;-><init>(Lcom/google/android/gms/internal/oi;Ljava/lang/String;Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/oi;->e:Lcom/google/android/gms/ads/a/a;

    if-nez v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ok;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/ok;-><init>(Lcom/google/android/gms/internal/oi;Ljava/lang/String;Z)V

    monitor-exit v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/oi;->e:Lcom/google/android/gms/ads/a/a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/a/a;->b()Lcom/google/android/gms/ads/a/b;

    move-result-object v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v1, "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v4, v7, [B

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v5, 0x12

    if-eq v0, v5, :cond_2

    const/16 v5, 0x17

    if-ne v0, v5, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/oi;->c:Lcom/google/android/gms/internal/rs;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/rs;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ok;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/a/b;->b()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ok;-><init>(Lcom/google/android/gms/internal/oi;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected final b(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/nm;->b(Landroid/content/Context;)V

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/oi;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    invoke-static {p1}, Lcom/google/android/gms/internal/oi;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/oi;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;->f()Lcom/google/android/gms/internal/ok;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ok;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/oi;->a(IJ)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ok;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1a

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/oi;->a(IJ)V

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/oi;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/no; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
