.class public final Lcom/google/android/gms/internal/jo;
.super Lcom/google/android/gms/internal/jn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/jm;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/jn;-><init>(Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/jm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jo;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ju;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/lf;->h()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bs;

    const-string v2, "gads:sdk_core_location"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gads:sdk_core_experiment_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gads:block_autoclicks_experiment_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gads:spam_app_context:experiment_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/bs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/dp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/dp;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/kz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/kz;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bs;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/kx;)Lcom/google/android/gms/internal/kg;

    move-result-object v0

    return-object v0
.end method
