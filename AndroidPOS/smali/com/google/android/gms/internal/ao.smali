.class public final Lcom/google/android/gms/internal/ao;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ao;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ao;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/internal/ao;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ao;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ao;->a:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ao;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ao;->a:J

    long-to-int v0, v0

    return v0
.end method
