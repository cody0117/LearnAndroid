.class final Lcom/google/android/gms/internal/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/aa;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lcom/google/android/gms/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ad;Lcom/google/android/gms/internal/aa;Landroid/webkit/WebView;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/af;->d:Lcom/google/android/gms/internal/ad;

    iput-object p2, p0, Lcom/google/android/gms/internal/af;->b:Lcom/google/android/gms/internal/aa;

    iput-object p3, p0, Lcom/google/android/gms/internal/af;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/internal/af;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->c:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->a:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
