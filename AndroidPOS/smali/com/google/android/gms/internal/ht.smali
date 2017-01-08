.class public final Lcom/google/android/gms/internal/ht;
.super Lcom/google/android/gms/internal/gx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/purchase/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ht;->a:Lcom/google/android/gms/ads/purchase/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/gt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->a:Lcom/google/android/gms/ads/purchase/a;

    new-instance v0, Lcom/google/android/gms/internal/hx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/hx;-><init>(Lcom/google/android/gms/internal/gt;)V

    return-void
.end method
