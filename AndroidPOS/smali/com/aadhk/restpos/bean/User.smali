.class public Lcom/aadhk/restpos/bean/User;
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
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account:Ljava/lang/String;

.field private enable:Z

.field private id:I

.field private password:Ljava/lang/String;

.field private role:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/aadhk/restpos/bean/User$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/User$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZI)V
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
    iput p1, p0, Lcom/aadhk/restpos/bean/User;->id:I

    .line 17
    iput-object p2, p0, Lcom/aadhk/restpos/bean/User;->account:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/aadhk/restpos/bean/User;->password:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/aadhk/restpos/bean/User;->enable:Z

    .line 20
    iput p5, p0, Lcom/aadhk/restpos/bean/User;->role:I

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/User;->id:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/User;->account:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/User;->password:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/User;->enable:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/User;->role:I

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/aadhk/restpos/bean/User;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 29
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    const-class v0, Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/aadhk/restpos/bean/User;->clone()Lcom/aadhk/restpos/bean/User;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/User;

    .line 93
    iget v2, p0, Lcom/aadhk/restpos/bean/User;->id:I

    iget v3, p1, Lcom/aadhk/restpos/bean/User;->id:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/bean/User;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/aadhk/restpos/bean/User;->id:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/bean/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/aadhk/restpos/bean/User;->role:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/aadhk/restpos/bean/User;->id:I

    add-int/lit8 v0, v0, 0x1f

    .line 81
    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/User;->enable:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aadhk/restpos/bean/User;->account:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/User;->enable:Z

    .line 74
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/aadhk/restpos/bean/User;->id:I

    .line 42
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/aadhk/restpos/bean/User;->password:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRole(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/aadhk/restpos/bean/User;->role:I

    .line 50
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/User;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/User;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/User;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/User;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/User;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/aadhk/restpos/bean/User;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/bean/User;->account:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/bean/User;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/User;->enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget v0, p0, Lcom/aadhk/restpos/bean/User;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
