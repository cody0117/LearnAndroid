.class public Lcom/google/android/gms/fitness/result/SessionReadResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/SessionReadResult;",
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
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/q;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/SessionReadResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/q;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->a:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->b:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->d:Lcom/google/android/gms/common/api/Status;

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
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->d:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/result/SessionReadResult;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/result/SessionReadResult;

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->d:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/SessionReadResult;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/SessionReadResult;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/SessionReadResult;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->d:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->b:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->c:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/pt;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "sessions"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    const-string v1, "sessionDataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/SessionReadResult;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/f;->a(Lcom/google/android/gms/fitness/result/SessionReadResult;Landroid/os/Parcel;I)V

    return-void
.end method
