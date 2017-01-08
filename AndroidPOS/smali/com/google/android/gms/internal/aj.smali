.class public final Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ai;

.field private d:Landroid/util/Base64OutputStream;

.field private e:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/am;

    invoke-direct {v0}, Lcom/google/android/gms/internal/am;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->c:Lcom/google/android/gms/internal/ai;

    iput p1, p0, Lcom/google/android/gms/internal/aj;->b:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/aj;->a:I

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->e:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Landroid/util/Base64OutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->e:Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->d:Landroid/util/Base64OutputStream;

    new-instance v2, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/aj;->b:I

    new-instance v3, Lcom/google/android/gms/internal/ak;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ak;-><init>(Lcom/google/android/gms/internal/aj;)V

    invoke-direct {v2, v0, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/al;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    iget v5, p0, Lcom/google/android/gms/internal/aj;->a:I

    if-lt v4, v5, :cond_2

    iget v4, p0, Lcom/google/android/gms/internal/aj;->b:I

    iget v5, p0, Lcom/google/android/gms/internal/aj;->a:I

    invoke-static {v3, v4, v5, v2}, Lcom/google/android/gms/internal/an;->a([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ao;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->d:Landroid/util/Base64OutputStream;

    iget-object v3, p0, Lcom/google/android/gms/internal/aj;->c:Lcom/google/android/gms/internal/ai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ao;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ai;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Base64OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->d:Landroid/util/Base64OutputStream;

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->flush()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->d:Landroid/util/Base64OutputStream;

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
