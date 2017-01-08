.class public final Lcom/google/android/gms/internal/jx;
.super Lcom/google/android/gms/internal/lk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/jb;

.field private final b:Lcom/google/android/gms/internal/fj;

.field private final c:Lcom/google/android/gms/internal/lb;

.field private final d:Lcom/google/android/gms/internal/ka;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/la;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/s;Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/jb;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ka;

    new-instance v4, Lcom/google/android/gms/internal/lz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/lz;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ka;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/s;Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/internal/lb;)V

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/jx;-><init>(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/ka;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/lk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jx;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->c:Lcom/google/android/gms/internal/lb;

    iget-object v0, p1, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    iput-object v0, p0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/internal/jb;

    iput-object p3, p0, Lcom/google/android/gms/internal/jx;->d:Lcom/google/android/gms/internal/ka;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jx;)Lcom/google/android/gms/internal/jb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/internal/jb;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 31

    const/4 v6, -0x2

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/jx;->e:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/jx;->d:Lcom/google/android/gms/internal/ka;

    invoke-static {v2}, Lcom/google/android/gms/internal/lm;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/jx;->f:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/jx;->f:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/la;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    if-eqz v2, :cond_0

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/jy;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/jy;-><init>(Lcom/google/android/gms/internal/jx;Lcom/google/android/gms/internal/la;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_0
    move-exception v2

    const/4 v6, 0x2

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_0

    :catch_2
    move-exception v2

    const/4 v6, -0x1

    move-object v2, v3

    goto :goto_0

    :catch_3
    move-exception v2

    const/4 v6, -0x1

    move-object v2, v3

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/la;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/jx;->c:Lcom/google/android/gms/internal/lb;

    iget-object v3, v3, Lcom/google/android/gms/internal/lb;->a:Lcom/google/android/gms/internal/fh;

    iget-object v3, v3, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    iget v9, v9, Lcom/google/android/gms/internal/fj;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    iget-wide v10, v10, Lcom/google/android/gms/internal/fj;->k:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/jx;->c:Lcom/google/android/gms/internal/lb;

    iget-object v12, v12, Lcom/google/android/gms/internal/lb;->a:Lcom/google/android/gms/internal/fh;

    iget-object v12, v12, Lcom/google/android/gms/internal/fh;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/fj;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->c:Lcom/google/android/gms/internal/lb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->d:Lcom/google/android/gms/internal/ay;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/fj;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->c:Lcom/google/android/gms/internal/lb;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/lb;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/fj;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->b:Lcom/google/android/gms/internal/fj;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->c:Lcom/google/android/gms/internal/lb;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/la;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/mg;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/eh;Ljava/lang/String;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dw;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/cg;)V

    goto/16 :goto_1
.end method

.method public final u_()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/jx;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

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
