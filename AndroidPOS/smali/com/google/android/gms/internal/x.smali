.class final Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x;->b:Lcom/google/android/gms/internal/v;

    iput-object p2, p0, Lcom/google/android/gms/internal/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->b:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
