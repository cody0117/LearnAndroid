.class final Lcom/google/android/gms/internal/ew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ew;->a:Lcom/google/android/gms/internal/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ew;->a:Lcom/google/android/gms/internal/ev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ev;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ew;->a:Lcom/google/android/gms/internal/ev;

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/ev;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
