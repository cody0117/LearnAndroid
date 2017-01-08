.class public Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nc;

.field public static final a:I

.field private static final g:Lcom/google/android/gms/internal/hp;


# instance fields
.field final b:I

.field public final c:Ljava/lang/String;

.field final d:Lcom/google/android/gms/internal/hp;

.field public final e:I

.field public final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/hh;->a:I

    new-instance v0, Lcom/google/android/gms/internal/nc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hh;->CREATOR:Lcom/google/android/gms/internal/nc;

    new-instance v0, Lcom/google/android/gms/internal/ni;

    const-string v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ni;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni;->a()Lcom/google/android/gms/internal/ni;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ni;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni;->b()Lcom/google/android/gms/internal/hp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/hh;->g:Lcom/google/android/gms/internal/hp;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/hp;I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/hh;->a:I

    if-eq p4, v0, :cond_0

    invoke-static {p4}, Lcom/google/android/gms/internal/nh;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid section type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/px;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/internal/hh;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hh;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hh;->d:Lcom/google/android/gms/internal/hp;

    iput p4, p0, Lcom/google/android/gms/internal/hh;->e:I

    iput-object p5, p0, Lcom/google/android/gms/internal/hh;->f:[B

    iget v0, p0, Lcom/google/android/gms/internal/hh;->e:I

    sget v1, Lcom/google/android/gms/internal/hh;->a:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/hh;->e:I

    invoke-static {v0}, Lcom/google/android/gms/internal/nh;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid section type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/hh;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->f:[B

    if-eqz v0, :cond_3

    const-string v0, "Both content and blobContent set"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hh;->CREATOR:Lcom/google/android/gms/internal/nc;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hh;->CREATOR:Lcom/google/android/gms/internal/nc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nc;->a(Lcom/google/android/gms/internal/hh;Landroid/os/Parcel;I)V

    return-void
.end method
