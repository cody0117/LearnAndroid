.class public Lcom/google/android/gms/internal/mq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ru;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ru;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mq;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mq;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mq;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/internal/mq;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ru;->a(Lcom/google/android/gms/internal/mq;Landroid/os/Parcel;)V

    return-void
.end method
