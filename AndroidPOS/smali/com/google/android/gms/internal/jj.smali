.class public Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Landroid/os/IBinder;

.field f:[Lcom/google/android/gms/common/api/Scope;

.field g:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/oq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jj;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/jj;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/jj;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/jj;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/jj;->e:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/google/android/gms/internal/jj;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/internal/jj;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/jj;Landroid/os/Parcel;I)V

    return-void
.end method
