.class public final Lcom/google/android/gms/fitness/data/RawDataPoint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:[Lcom/google/android/gms/fitness/data/Value;

.field final e:I

.field final f:I

.field final g:J

.field final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/p;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJ[Lcom/google/android/gms/fitness/data/Value;IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    iput p7, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    iput p8, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->g:J

    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->h:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->a:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/data/v;->a(Ljava/lang/Object;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/data/v;->a(Ljava/lang/Object;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->g:J

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->h:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/RawDataPoint;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->g:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "RawDataPoint{%s@[%s, %s](%d,%d)}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/p;->a(Lcom/google/android/gms/fitness/data/RawDataPoint;Landroid/os/Parcel;I)V

    return-void
.end method
