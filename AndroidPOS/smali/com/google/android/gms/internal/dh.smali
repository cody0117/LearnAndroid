.class public final Lcom/google/android/gms/internal/dh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field private final a:Lcom/google/android/gms/internal/di;

.field private final b:Lcom/google/android/gms/internal/dj;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/di;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/dh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/di;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/di;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dh;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/dh;->a:Lcom/google/android/gms/internal/di;

    new-instance v0, Lcom/google/android/gms/internal/dj;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/internal/dj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->d()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/bt;->a()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dh;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->c()Lcom/google/android/gms/internal/dk;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/dk;->a()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->e()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->g()V

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dh;->a:Lcom/google/android/gms/internal/di;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/di;->a(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->e()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v2

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->e()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->g()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->e()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->g()V

    :cond_6
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final t_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->a:Lcom/google/android/gms/internal/di;

    invoke-static {}, Lcom/google/android/gms/internal/bt;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/di;->a(Landroid/os/Bundle;)V

    return-void
.end method
