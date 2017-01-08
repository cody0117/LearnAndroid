.class public final Lcom/google/android/gms/internal/li;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private final d:Lcom/google/android/gms/internal/lf;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/lf;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/li;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/li;->d:Lcom/google/android/gms/internal/lf;

    iput-object p2, p0, Lcom/google/android/gms/internal/li;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/lf;->a()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/li;-><init>(Lcom/google/android/gms/internal/lf;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/li;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/li;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(II)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/li;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/li;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->d:Lcom/google/android/gms/internal/lf;

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/li;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
