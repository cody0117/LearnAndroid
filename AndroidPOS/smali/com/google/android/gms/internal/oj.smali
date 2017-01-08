.class final Lcom/google/android/gms/internal/oj;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a()Ljava/lang/Void;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/oi;->b()Lcom/google/android/gms/ads/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a;->a()V
    :try_end_0
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/oi;->e()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/oi;->c()Z

    invoke-static {}, Lcom/google/android/gms/internal/oi;->d()Lcom/google/android/gms/ads/a/a;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/oi;->d()Lcom/google/android/gms/ads/a/a;

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/oi;->d()Lcom/google/android/gms/ads/a/a;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/oj;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
