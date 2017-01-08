.class final Lcom/google/android/gms/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/gs;

.field final synthetic c:Lcom/google/android/gms/internal/lt;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/s;Landroid/content/Context;Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/lt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/t;->e:Lcom/google/android/gms/internal/s;

    iput-object p2, p0, Lcom/google/android/gms/internal/t;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/t;->b:Lcom/google/android/gms/internal/gs;

    iput-object p4, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/internal/lt;

    iput-object p5, p0, Lcom/google/android/gms/internal/t;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->e:Lcom/google/android/gms/internal/s;

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/t;->b:Lcom/google/android/gms/internal/gs;

    iget-object v3, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/internal/lt;

    new-instance v4, Lcom/google/android/gms/internal/v;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gs;)V

    new-instance v1, Lcom/google/android/gms/internal/u;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/u;-><init>(Lcom/google/android/gms/internal/s;Lcom/google/android/gms/internal/lt;Lcom/google/android/gms/internal/q;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/r;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/String;)V

    return-void
.end method
