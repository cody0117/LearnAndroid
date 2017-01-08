.class final Lcom/google/android/gms/internal/ex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ex;->a:Lcom/google/android/gms/internal/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->a:Lcom/google/android/gms/internal/ev;

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    const-string v1, "onCalendarEventCanceled"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mg;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
