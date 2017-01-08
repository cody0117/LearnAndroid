.class final Lcom/google/android/gms/internal/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cz;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/n;->a:Lcom/google/android/gms/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mg;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/n;->a:Lcom/google/android/gms/internal/h;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/h;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received request to untrack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/n;->a:Lcom/google/android/gms/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/internal/h;->b(Lcom/google/android/gms/internal/h;)Lcom/google/android/gms/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/n;->a:Lcom/google/android/gms/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/h;->c()V

    goto :goto_0
.end method
