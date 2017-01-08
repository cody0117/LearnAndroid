.class final Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/kn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/kn;

    const-string v1, "destroyAdWebView must be called on the main thread."

    invoke-static {v1}, Lcom/google/android/gms/internal/px;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/mg;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mg;->destroy()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/mg;

    :cond_0
    return-void
.end method
