.class final Lcom/google/android/gms/tagmanager/bk;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/a;

.field private b:Lcom/google/android/gms/tagmanager/bl;

.field private c:Z


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bk;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bk;->b:Lcom/google/android/gms/tagmanager/bl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bk;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bk;->a:Lcom/google/android/gms/tagmanager/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bk;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/x;->a()V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bk;->a:Lcom/google/android/gms/tagmanager/a;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bk;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/x;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bk;->b:Lcom/google/android/gms/tagmanager/bl;

    goto :goto_0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bk;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/x;->a()V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bk;->b:Lcom/google/android/gms/tagmanager/bl;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/bl;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
