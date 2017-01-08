.class final Lcom/google/android/gms/internal/ll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ll;->a:Lcom/google/android/gms/internal/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ll;->a:Lcom/google/android/gms/internal/lk;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lk;->a(Lcom/google/android/gms/internal/lk;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ll;->a:Lcom/google/android/gms/internal/lk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lk;->a()V

    return-void
.end method
