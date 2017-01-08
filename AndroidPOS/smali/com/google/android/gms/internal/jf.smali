.class final Lcom/google/android/gms/internal/jf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/jc;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/fj;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->d(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/mk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/fj;->e:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading URL in WebView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v1}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/fj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->d(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v1}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/fj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->loadUrl(Ljava/lang/String;)V

    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->d(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v1}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/fj;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jf;->a:Lcom/google/android/gms/internal/jc;

    invoke-static {v2}, Lcom/google/android/gms/internal/jc;->c(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/internal/fj;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/fj;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mg;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
