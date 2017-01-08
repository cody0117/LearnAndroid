.class final Lcom/google/android/gms/internal/jy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/la;

.field final synthetic b:Lcom/google/android/gms/internal/jx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;Lcom/google/android/gms/internal/la;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jy;->b:Lcom/google/android/gms/internal/jx;

    iput-object p2, p0, Lcom/google/android/gms/internal/jy;->a:Lcom/google/android/gms/internal/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jy;->b:Lcom/google/android/gms/internal/jx;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/jx;)Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jy;->a:Lcom/google/android/gms/internal/la;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/la;)V

    return-void
.end method
