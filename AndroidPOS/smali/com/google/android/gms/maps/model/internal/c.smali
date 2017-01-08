.class public final Lcom/google/android/gms/maps/model/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/internal/d;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/c;->CREATOR:Lcom/google/android/gms/maps/model/internal/d;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/c;->a:I

    iput p2, p0, Lcom/google/android/gms/maps/model/internal/c;->b:I

    iput-object p3, p0, Lcom/google/android/gms/maps/model/internal/c;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/c;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/c;->b:I

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/c;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/internal/d;->a(Lcom/google/android/gms/maps/model/internal/c;Landroid/os/Parcel;)V

    return-void
.end method
