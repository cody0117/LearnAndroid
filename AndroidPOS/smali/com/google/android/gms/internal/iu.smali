.class public final Lcom/google/android/gms/internal/iu;
.super Lcom/google/android/gms/internal/lk;

# interfaces
.implements Lcom/google/android/gms/internal/jm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ic;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/jr;

.field private final f:Lcom/google/android/gms/internal/qa;

.field private g:Lcom/google/android/gms/internal/lk;

.field private h:Lcom/google/android/gms/internal/fj;

.field private i:Lcom/google/android/gms/internal/du;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/ic;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/lk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/iu;->a:Lcom/google/android/gms/internal/ic;

    iput-object p1, p0, Lcom/google/android/gms/internal/iu;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/iu;->e:Lcom/google/android/gms/internal/jr;

    iput-object p3, p0, Lcom/google/android/gms/internal/iu;->f:Lcom/google/android/gms/internal/qa;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/ay;
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ix;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->m:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ix;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v2, v2, Lcom/google/android/gms/internal/fj;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v6, v0, Lcom/google/android/gms/internal/ay;->h:[Lcom/google/android/gms/internal/ay;

    array-length v7, v6

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/ay;->f:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget v0, v8, Lcom/google/android/gms/internal/ay;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iget v9, v8, Lcom/google/android/gms/internal/ay;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/google/android/gms/internal/ay;->d:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_2
    if-ne v4, v0, :cond_4

    if-ne v5, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ay;

    iget-object v1, p1, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/internal/ay;->h:[Lcom/google/android/gms/internal/ay;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/ay;-><init>(Lcom/google/android/gms/internal/ay;[Lcom/google/android/gms/internal/ay;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ix;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v2, v2, Lcom/google/android/gms/internal/fj;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/google/android/gms/internal/ay;->f:I

    goto :goto_1

    :cond_3
    iget v1, v8, Lcom/google/android/gms/internal/ay;->c:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ix;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v2, v2, Lcom/google/android/gms/internal/fj;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(J)Z
    .locals 4

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ix;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->a:Lcom/google/android/gms/internal/ic;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    const/4 v10, 0x3

    const/4 v5, -0x2

    const/4 v9, -0x3

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/iu;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->f:Lcom/google/android/gms/internal/qa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qa;->a()Lcom/google/android/gms/internal/le;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/le;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fh;

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->e:Lcom/google/android/gms/internal/jr;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/fh;-><init>(Lcom/google/android/gms/internal/jr;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v4, p0, Lcom/google/android/gms/internal/iu;->c:Landroid/content/Context;

    iget-object v0, v1, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gs;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/jo;

    invoke-direct {v0, v4, v1, p0}, Lcom/google/android/gms/internal/jo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/jm;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jo;->e()V

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/iu;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->g:Lcom/google/android/gms/internal/lk;

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->g:Lcom/google/android/gms/internal/lk;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ix;

    const-string v5, "Could not start the ad request service."

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v4, v8

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->a()I

    move-result v5

    if-eq v5, v10, :cond_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->getMessage()Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/fj;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/iv;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/iv;-><init>(Lcom/google/android/gms/internal/iu;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v6, v2

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_c

    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->r:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/lb;

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v3, p0, Lcom/google/android/gms/internal/iu;->i:Lcom/google/android/gms/internal/du;

    iget-object v8, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-wide v8, v8, Lcom/google/android/gms/internal/fj;->n:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/lb;-><init>(Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/fj;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/ay;IJJLorg/json/JSONObject;)V

    sget-object v1, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/iw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/iw;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/lb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_1
    :try_start_7
    invoke-static {v4}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v8

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0, v4, v1, p0}, Lcom/google/android/gms/internal/jp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/jm;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_3
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :try_start_9
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/iu;->a(J)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ix;

    const-string v4, "Timed out waiting for ad response."

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/iu;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->g:Lcom/google/android/gms/internal/lk;

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget v0, v0, Lcom/google/android/gms/internal/fj;->e:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget v0, v0, Lcom/google/android/gms/internal/fj;->e:I

    if-eq v0, v9, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ix;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "There was a problem getting an ad response. ErrorCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget v5, v5, Lcom/google/android/gms/internal/fj;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget v5, v5, Lcom/google/android/gms/internal/fj;->e:I

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget v0, v0, Lcom/google/android/gms/internal/fj;->e:I

    if-eq v0, v9, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ix;

    const-string v4, "No fill from ad server."

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/fj;->u:Z

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/lf;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fj;->h:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v0, :cond_8

    :try_start_c
    new-instance v0, Lcom/google/android/gms/internal/du;

    iget-object v4, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v4, v4, Lcom/google/android/gms/internal/fj;->c:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->i:Lcom/google/android/gms/internal/du;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_c .. :try_end_c} :catch_0

    :cond_8
    :try_start_d
    iget-object v0, v1, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->h:[Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/ay;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_d .. :try_end_d} :catch_0

    move-result-object v4

    :goto_6
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fj;->v:Z

    invoke-static {}, Lcom/google/android/gms/internal/lf;->a()Lcom/google/android/gms/internal/lf;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/lf;->a(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/lf;->a()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/iu;->c:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/lf;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ad;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->isAlive()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->a()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_e .. :try_end_e} :catch_3

    :cond_9
    move-wide v6, v2

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_f
    new-instance v0, Lcom/google/android/gms/internal/ix;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse mediation config: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v5, v5, Lcom/google/android/gms/internal/fj;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Lcom/google/android/gms/internal/ix; {:try_start_f .. :try_end_f} :catch_0

    :cond_a
    :try_start_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/fj;

    iget-object v6, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-wide v6, v6, Lcom/google/android/gms/internal/fj;->k:J

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/gms/internal/fj;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :cond_c
    move-object v10, v8

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_d
    move-object v4, v8

    goto :goto_6
.end method

.method public final a(Lcom/google/android/gms/internal/fj;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/iu;->h:Lcom/google/android/gms/internal/fj;

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final u_()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->g:Lcom/google/android/gms/internal/lk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->g:Lcom/google/android/gms/internal/lk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lk;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
