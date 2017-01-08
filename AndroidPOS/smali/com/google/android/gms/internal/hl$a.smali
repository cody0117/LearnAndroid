.class public Lcom/google/android/gms/internal/hl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nf;


# instance fields
.field final a:I

.field public final b:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hl$a;->CREATOR:Lcom/google/android/gms/internal/nf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hl$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/hl$a;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hl$a;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hl$a;->b:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hl$a;->CREATOR:Lcom/google/android/gms/internal/nf;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hl$a;->CREATOR:Lcom/google/android/gms/internal/nf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Lcom/google/android/gms/internal/hl$a;Landroid/os/Parcel;I)V

    return-void
.end method
