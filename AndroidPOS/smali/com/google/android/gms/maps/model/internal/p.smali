.class public final Lcom/google/android/gms/maps/model/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/internal/j;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/p;->CREATOR:Lcom/google/android/gms/maps/model/internal/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/internal/p;->a:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/p;->a:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/internal/p;->b:Lcom/google/android/gms/maps/model/internal/a;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/p;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/maps/model/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/p;->b:Lcom/google/android/gms/maps/model/internal/a;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/internal/j;->a(Lcom/google/android/gms/maps/model/internal/p;Landroid/os/Parcel;I)V

    return-void
.end method
