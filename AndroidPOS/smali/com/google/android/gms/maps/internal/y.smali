.class public Lcom/google/android/gms/maps/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/internal/c;


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/maps/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/internal/y;->CREATOR:Lcom/google/android/gms/maps/internal/c;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/internal/y;->a:I

    iput-object p2, p0, Lcom/google/android/gms/maps/internal/y;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/internal/y;->a:I

    return v0
.end method

.method public final b()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/y;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/maps/internal/y;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/maps/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/y;->b:Landroid/graphics/Point;

    iget-object v1, p1, Lcom/google/android/gms/maps/internal/y;->b:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/y;->b:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/y;->b:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/maps/internal/y;Landroid/os/Parcel;I)V

    return-void
.end method