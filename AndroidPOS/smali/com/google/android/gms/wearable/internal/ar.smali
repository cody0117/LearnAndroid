.class public Lcom/google/android/gms/wearable/internal/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/ar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field public final b:Lcom/google/android/gms/wearable/internal/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/ar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/ar;->a:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/ar;->b:Lcom/google/android/gms/wearable/internal/d;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/ar;->b:Lcom/google/android/gms/wearable/internal/d;

    goto :goto_0
.end method


# virtual methods
.method final a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ar;->b:Lcom/google/android/gms/wearable/internal/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ar;->b:Lcom/google/android/gms/wearable/internal/d;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/wearable/internal/k;->a(Lcom/google/android/gms/wearable/internal/ar;Landroid/os/Parcel;)V

    return-void
.end method
