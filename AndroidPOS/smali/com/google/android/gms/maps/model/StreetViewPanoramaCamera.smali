.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/n;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field private final d:I

.field private e:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/n;

    return-void
.end method

.method constructor <init>(IFFF)V
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const/high16 v4, 0x43b4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x3d4c

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_1

    const/high16 v0, 0x42b4

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Tilt needs to be between -90 and 90 inclusive"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/px;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->d:I

    float-to-double v2, p2

    cmpg-double v0, v2, v5

    if-gtz v0, :cond_0

    move p2, v1

    :cond_0
    iput p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    add-float v0, p3, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    float-to-double v0, p4

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_2

    rem-float v0, p4, v4

    add-float/2addr v0, v4

    :goto_1
    rem-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    new-instance v0, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/c;-><init>()V

    iput p3, v0, Lcom/google/android/gms/maps/model/c;->b:F

    iput p4, v0, Lcom/google/android/gms/maps/model/c;->a:F

    new-instance v1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    iget v2, v0, Lcom/google/android/gms/maps/model/c;->b:F

    iget v0, v0, Lcom/google/android/gms/maps/model/c;->a:F

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->e:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, p4

    goto :goto_1
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "zoom"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "tilt"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "bearing"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/n;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;)V

    return-void
.end method