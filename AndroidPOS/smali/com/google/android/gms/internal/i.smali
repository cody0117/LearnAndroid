.class final Lcom/google/android/gms/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/r;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/gms/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/h;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/i;->b:Lcom/google/android/gms/internal/h;

    iput-object p2, p0, Lcom/google/android/gms/internal/i;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->b:Lcom/google/android/gms/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/h;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->b:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/h;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->b:Lcom/google/android/gms/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/h;->b()V

    return-void
.end method
