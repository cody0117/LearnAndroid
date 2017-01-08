.class public final Lcom/google/android/gms/internal/aq;
.super Lcom/google/android/gms/a/h;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/h",
        "<",
        "Lcom/google/android/gms/internal/bf;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aq;->a:Lcom/google/android/gms/internal/aq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/ed;)Lcom/google/android/gms/internal/bc;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/aq;->a:Lcom/google/android/gms/internal/aq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/aq;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/ed;)Lcom/google/android/gms/internal/bc;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/gs;

    invoke-direct {v5}, Lcom/google/android/gms/internal/gs;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ts;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ts;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/internal/gs;)V

    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/ed;)Lcom/google/android/gms/internal/bc;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/f;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aq;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bf;

    const v5, 0x648278

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bf;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/ee;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/i; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bg;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bf;

    move-result-object v0

    return-object v0
.end method
