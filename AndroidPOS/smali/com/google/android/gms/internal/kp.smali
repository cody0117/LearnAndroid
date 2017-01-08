.class final Lcom/google/android/gms/internal/kp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cz;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/kn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mg;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/kn;

    invoke-static {v0}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kn;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/kn;

    invoke-static {v0}, Lcom/google/android/gms/internal/kn;->b(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/lt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ku;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/ku;-><init>(ILjava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ku;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ku;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/kn;

    invoke-static {v2}, Lcom/google/android/gms/internal/kn;->b(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/lt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
