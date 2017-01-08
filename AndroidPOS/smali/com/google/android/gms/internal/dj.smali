.class public final Lcom/google/android/gms/internal/dj;
.super Lcom/google/android/gms/internal/os;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/os",
        "<",
        "Lcom/google/android/gms/internal/dk;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/c;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/os;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/c;[Ljava/lang/String;)V

    const v0, 0x648278

    iput v0, p0, Lcom/google/android/gms/internal/dj;->a:I

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/dl;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dk;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.gservice.START"

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/ow;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/dj;->a:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dj;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/pn;->g(Lcom/google/android/gms/internal/pk;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.gservice.IGservicesValueService"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/dk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/os;->i()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dk;

    return-object v0
.end method
