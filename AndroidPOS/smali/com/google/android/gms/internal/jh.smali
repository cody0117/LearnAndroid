.class final Lcom/google/android/gms/internal/jh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iy;

.field final synthetic b:Lcom/google/android/gms/internal/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/internal/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jh;->b:Lcom/google/android/gms/internal/jc;

    iput-object p2, p0, Lcom/google/android/gms/internal/jh;->a:Lcom/google/android/gms/internal/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->b:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/jc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->b:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/fj;->e:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->b:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->d(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/jh;->b:Lcom/google/android/gms/internal/jc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/mk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->a:Lcom/google/android/gms/internal/iy;

    iget-object v2, p0, Lcom/google/android/gms/internal/jh;->b:Lcom/google/android/gms/internal/jc;

    invoke-static {v2}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/iy;->a(Lcom/google/android/gms/internal/fj;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
