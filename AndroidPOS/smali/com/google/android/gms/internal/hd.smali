.class public Lcom/google/android/gms/internal/hd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/na;


# instance fields
.field final a:I

.field final b:[Lcom/google/android/gms/internal/hh;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/na;

    invoke-direct {v0}, Lcom/google/android/gms/internal/na;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/na;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/internal/hh;Ljava/lang/String;ZLandroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hd;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hd;->b:[Lcom/google/android/gms/internal/hh;

    iput-object p3, p0, Lcom/google/android/gms/internal/hd;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hd;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/hd;->e:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/na;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/na;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/hd;Landroid/os/Parcel;I)V

    return-void
.end method
