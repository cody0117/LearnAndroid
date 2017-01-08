.class public final Lcom/google/android/gms/internal/cc;
.super Lcom/google/android/gms/internal/ca;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ca;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cc;->a:Lcom/google/android/gms/ads/doubleclick/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Lcom/google/android/gms/ads/doubleclick/c;

    new-instance v0, Lcom/google/android/gms/internal/bv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bw;)V

    return-void
.end method
