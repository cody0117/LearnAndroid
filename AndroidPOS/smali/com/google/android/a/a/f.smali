.class public abstract Lcom/google/android/a/a/f;
.super Landroid/os/Binder;
.source "ProGuard"

# interfaces
.implements Lcom/google/android/a/a/e;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/a/a/e;
    .locals 2
    .parameter

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.vending.licensing.ILicensingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/a/a/e;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/google/android/a/a/e;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/android/a/a/g;

    invoke-direct {v0, p0}, Lcom/google/android/a/a/g;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/google/android/a/a/f;->a(JLjava/lang/String;Lcom/google/android/a/a/b;)V

    move v0, v1

    .line 56
    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "com.android.vending.licensing.ILicenseResultListener"

    invoke-interface {v5, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v6, v0, Lcom/google/android/a/a/b;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/google/android/a/a/b;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/a/a/d;

    invoke-direct {v0, v5}, Lcom/google/android/a/a/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
