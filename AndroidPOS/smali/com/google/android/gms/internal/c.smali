.class final Lcom/google/android/gms/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ts;

.field final synthetic b:Lcom/google/android/gms/internal/b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/internal/ts;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/c;->b:Lcom/google/android/gms/internal/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/c;->a:Lcom/google/android/gms/internal/ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Lcom/google/android/gms/internal/ts;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->b:Lcom/google/android/gms/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/internal/b;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ts;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->b:Lcom/google/android/gms/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/internal/b;->b(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/av;)V

    :cond_0
    return-void
.end method
