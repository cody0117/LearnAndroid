.class final Lcom/google/android/gms/internal/tt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ts;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tt;->a:Lcom/google/android/gms/internal/ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tt;->a:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tt;->a:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tt;->a:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    iget-object v0, v0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/mg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tt;->a:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    iget-object v0, v0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->a()V

    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
