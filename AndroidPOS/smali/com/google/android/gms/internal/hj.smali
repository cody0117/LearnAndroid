.class public Lcom/google/android/gms/internal/hj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ne;


# instance fields
.field final a:I

.field public final b:I

.field final c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ne;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hj;->CREATOR:Lcom/google/android/gms/internal/ne;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hj;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/hj;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/hj;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hj;->CREATOR:Lcom/google/android/gms/internal/ne;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hj;->CREATOR:Lcom/google/android/gms/internal/ne;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ne;->a(Lcom/google/android/gms/internal/hj;Landroid/os/Parcel;)V

    return-void
.end method