.class public final Lcom/google/android/gms/internal/fv;
.super Lcom/google/android/gms/a/h;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/h",
        "<",
        "Lcom/google/android/gms/internal/ga;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/fv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fv;->a:Lcom/google/android/gms/internal/fv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/fx;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fw;

    const-string v1, "Ad overlay requires the useClientJar flag in intent extras."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/fw; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fi;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/fv;->a:Lcom/google/android/gms/internal/fv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fv;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/fx;
    :try_end_1
    .catch Lcom/google/android/gms/internal/fw; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)Lcom/google/android/gms/internal/fx;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/f;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ga;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ga;->a(Lcom/google/android/gms/a/c;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fy;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fx;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/i; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ga;

    move-result-object v0

    return-object v0
.end method
