.class final Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/internal/af;->d:Lcom/google/android/gms/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/internal/af;->b:Lcom/google/android/gms/internal/aa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/internal/af;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/aa;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
