.class public final Lcom/google/android/gms/drive/internal/g;
.super Lcom/google/android/gms/internal/tf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tf",
        "<",
        "Lcom/google/android/gms/drive/internal/g;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tf;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/g;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->c:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/g;->m:Lcom/google/android/gms/internal/th;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/g;->n:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/tf;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/drive/internal/g;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/td;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/td;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/g;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/td;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/g;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/td;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/td;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/g;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/td;->a(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/td;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/td;->b(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/td;->b(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tf;->a(Lcom/google/android/gms/internal/td;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/drive/internal/g;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/g;

    iget v1, p0, Lcom/google/android/gms/drive/internal/g;->a:I

    iget v2, p1, Lcom/google/android/gms/drive/internal/g;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->c:J

    iget-wide v3, p1, Lcom/google/android/gms/drive/internal/g;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->d:J

    iget-wide v3, p1, Lcom/google/android/gms/drive/internal/g;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/g;->a(Lcom/google/android/gms/internal/tf;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    const/16 v5, 0x20

    iget v0, p0, Lcom/google/android/gms/drive/internal/g;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->c:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/g;->c:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/g;->d:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/g;->d:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/g;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
