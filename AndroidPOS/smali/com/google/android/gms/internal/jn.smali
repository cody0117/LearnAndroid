.class public abstract Lcom/google/android/gms/internal/jn;
.super Lcom/google/android/gms/internal/lk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/fh;

.field private final b:Lcom/google/android/gms/internal/jm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/jm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/lk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jn;->a:Lcom/google/android/gms/internal/fh;

    iput-object p2, p0, Lcom/google/android/gms/internal/jn;->b:Lcom/google/android/gms/internal/jm;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jn;->d()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jn;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/jn;->b:Lcom/google/android/gms/internal/jm;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/fj;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/jn;->a:Lcom/google/android/gms/internal/fh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jn;->a(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jn;->c()V

    throw v0
.end method

.method public abstract c()V
.end method

.method public abstract d()Lcom/google/android/gms/internal/ju;
.end method

.method public final u_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jn;->c()V

    return-void
.end method
