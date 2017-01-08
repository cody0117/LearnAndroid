.class final Lcom/google/android/gms/internal/pa;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/oz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/oz;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/internal/oz;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->b(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/pb;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->b(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/pb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/internal/oz;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->b(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->b()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
