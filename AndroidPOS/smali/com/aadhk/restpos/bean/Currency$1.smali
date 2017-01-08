.class final Lcom/aadhk/restpos/bean/Currency$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/aadhk/restpos/bean/Currency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/aadhk/restpos/bean/Currency;
    .locals 1
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/aadhk/restpos/bean/Currency;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/bean/Currency;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/bean/Currency$1;->createFromParcel(Landroid/os/Parcel;)Lcom/aadhk/restpos/bean/Currency;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/aadhk/restpos/bean/Currency;
    .locals 1
    .parameter

    .prologue
    .line 94
    new-array v0, p1, [Lcom/aadhk/restpos/bean/Currency;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/bean/Currency$1;->newArray(I)[Lcom/aadhk/restpos/bean/Currency;

    move-result-object v0

    return-object v0
.end method
