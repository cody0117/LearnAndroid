.class final Lcom/google/android/gms/internal/ds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dz;

.field final synthetic b:Lcom/google/android/gms/internal/dq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ds;->b:Lcom/google/android/gms/internal/dq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/internal/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/internal/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/eh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/eh;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
