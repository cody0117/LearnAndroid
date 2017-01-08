.class final Lcom/google/android/gms/internal/tw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/gms/internal/ts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ts;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tw;->b:Lcom/google/android/gms/internal/ts;

    iput-object p2, p0, Lcom/google/android/gms/internal/tw;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/go;->a(Landroid/content/Intent;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->b:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->b:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    iget-object v0, v0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/mg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->b:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    iget-object v0, v0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->d()Lcom/google/android/gms/internal/fi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->b:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ty;->j:Lcom/google/android/gms/internal/la;

    iget-object v0, v0, Lcom/google/android/gms/internal/la;->b:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->d()Lcom/google/android/gms/internal/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fi;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->b:Lcom/google/android/gms/internal/ts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->a(Lcom/google/android/gms/internal/ts;)Lcom/google/android/gms/internal/ty;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ty;->x:Z

    return-void
.end method
