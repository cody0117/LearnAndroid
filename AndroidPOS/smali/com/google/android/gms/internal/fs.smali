.class final Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fq;

.field final synthetic b:Lcom/google/android/gms/internal/fr;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/fq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fr;Lcom/google/android/gms/internal/fq;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->b:Lcom/google/android/gms/internal/fr;

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->a:Lcom/google/android/gms/internal/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->a:Lcom/google/android/gms/internal/fq;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fq;

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->b:Lcom/google/android/gms/internal/fr;

    invoke-static {v1}, Lcom/google/android/gms/internal/fr;->a(Lcom/google/android/gms/internal/fr;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->b:Lcom/google/android/gms/internal/fr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fr;->b()V

    :cond_0
    return-void
.end method
