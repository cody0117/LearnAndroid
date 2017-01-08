.class final Lcom/google/android/gms/internal/je;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/la;

.field final synthetic b:Lcom/google/android/gms/internal/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/internal/la;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jc;

    iput-object p2, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/jc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->b(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/la;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/la;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
