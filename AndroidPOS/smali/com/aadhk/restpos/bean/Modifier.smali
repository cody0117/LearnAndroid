.class public Lcom/aadhk/restpos/bean/Modifier;
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
            "Lcom/aadhk/restpos/bean/Modifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cost:D

.field private groupId:J

.field private id:J

.field private name:Ljava/lang/String;

.field private price:D

.field private qty:I

.field private required:Z

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/aadhk/restpos/bean/Modifier$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Modifier$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/Modifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->cost:D

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 94
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
    check-cast p1, Lcom/aadhk/restpos/bean/Modifier;

    .line 87
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Modifier;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 90
    iget-object v2, p1, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-object v2, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public getCost()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->cost:D

    return-wide v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    return-wide v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 75
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 76
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

    return v0
.end method

.method public setCost(D)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->cost:D

    .line 49
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    .line 31
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    .line 43
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    .line 55
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

    .line 67
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    .line 61
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Modifier [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Modifier;->cost:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", required="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

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
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 124
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->cost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 125
    iget v0, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
