.class public final Lcom/google/android/gms/internal/dq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/fh;

.field private final b:Lcom/google/android/gms/internal/ee;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/du;

.field private f:Z

.field private g:Lcom/google/android/gms/internal/dx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/internal/du;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/internal/fh;

    iput-object p3, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/ee;

    iput-object p4, p0, Lcom/google/android/gms/internal/dq;->e:Lcom/google/android/gms/internal/du;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/dz;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->e:Lcom/google/android/gms/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/internal/du;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying mediation network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/dt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/google/android/gms/internal/dt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/dq;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->f:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/dz;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dz;-><init>(I)V

    monitor-exit v11

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/dx;

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/ee;

    iget-object v4, p0, Lcom/google/android/gms/internal/dq;->e:Lcom/google/android/gms/internal/du;

    iget-object v6, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/internal/fh;

    iget-object v6, v6, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    iget-object v7, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/internal/fh;

    iget-object v7, v7, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/ay;

    iget-object v8, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/internal/fh;

    iget-object v8, v8, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/dx;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/gs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->g:Lcom/google/android/gms/internal/dx;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->g:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/dx;->a(J)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/dz;->a:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/eh;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ds;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ds;-><init>(Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/dz;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/dz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dz;-><init>(I)V

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->g:Lcom/google/android/gms/internal/dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->g:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->a()V

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
