.class public Lcom/aadhk/restpos/bean/RolePermission;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private function:I

.field private id:I

.field private managerPermission:Z

.field private role:I

.field private show:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/aadhk/restpos/bean/RolePermission$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/RolePermission$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/RolePermission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/aadhk/restpos/bean/RolePermission;->id:I

    .line 17
    iput p2, p0, Lcom/aadhk/restpos/bean/RolePermission;->role:I

    .line 18
    iput p3, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    .line 19
    iput-boolean p4, p0, Lcom/aadhk/restpos/bean/RolePermission;->show:Z

    .line 20
    iput-boolean p5, p0, Lcom/aadhk/restpos/bean/RolePermission;->managerPermission:Z

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->id:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->role:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->show:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/RolePermission;->managerPermission:Z

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/RolePermission;

    .line 87
    iget v2, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    iget v3, p1, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public getFunction()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->id:I

    return v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->role:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    add-int/lit8 v0, v0, 0x1f

    .line 76
    return v0
.end method

.method public isManagerPermission()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->managerPermission:Z

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->show:Z

    return v0
.end method

.method public setFunction(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/aadhk/restpos/bean/RolePermission;->id:I

    .line 32
    return-void
.end method

.method public setManagerPermission(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/RolePermission;->managerPermission:Z

    .line 64
    return-void
.end method

.method public setRole(I)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/aadhk/restpos/bean/RolePermission;->role:I

    .line 40
    return-void
.end method

.method public setShow(Z)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/RolePermission;->show:Z

    .line 56
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RolePermission [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/RolePermission;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/RolePermission;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", function="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/RolePermission;->show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", managerPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/RolePermission;->managerPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->function:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->show:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 115
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/RolePermission;->managerPermission:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method
