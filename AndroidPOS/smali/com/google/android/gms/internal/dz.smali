.class public final Lcom/google/android/gms/internal/dz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/dt;

.field public final c:Lcom/google/android/gms/internal/eh;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/dw;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dz;-><init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/eh;Ljava/lang/String;Lcom/google/android/gms/internal/dw;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/eh;Ljava/lang/String;Lcom/google/android/gms/internal/dw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dz;->b:Lcom/google/android/gms/internal/dt;

    iput-object p2, p0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/eh;

    iput-object p3, p0, Lcom/google/android/gms/internal/dz;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/dz;->e:Lcom/google/android/gms/internal/dw;

    iput p5, p0, Lcom/google/android/gms/internal/dz;->a:I

    return-void
.end method
