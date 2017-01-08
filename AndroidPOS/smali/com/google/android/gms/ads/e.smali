.class public final Lcom/google/android/gms/ads/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/bp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/bp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b;->a()Lcom/google/android/gms/internal/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bm;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bp;->a(Ljava/lang/String;)V

    return-void
.end method
