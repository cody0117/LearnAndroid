.class public final Lcom/google/android/gms/internal/dw;
.super Lcom/google/android/gms/internal/en;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/eb;

.field private c:Lcom/google/android/gms/internal/dv;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/en;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dv;->k()V

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

.method public final a(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/eb;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/dv;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/eb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dv;->l()V

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

.method public final c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dv;->m()V

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

.method public final d()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dv;->n()V

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

.method public final e()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/eb;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Lcom/google/android/gms/internal/eb;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/dv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dv;->o()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
