.class final Lcom/google/android/gms/internal/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/h;->b(Z)V

    return-void
.end method
