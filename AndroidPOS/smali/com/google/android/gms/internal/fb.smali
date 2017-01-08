.class final Lcom/google/android/gms/internal/fb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fb;->a:Lcom/google/android/gms/internal/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->a:Lcom/google/android/gms/internal/ez;

    invoke-static {v0}, Lcom/google/android/gms/internal/ez;->b(Lcom/google/android/gms/internal/ez;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    const-string v1, "onStorePictureCanceled"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
