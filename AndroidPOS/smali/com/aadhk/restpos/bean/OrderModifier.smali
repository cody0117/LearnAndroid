.class public Lcom/aadhk/restpos/bean/OrderModifier;
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
            "Lcom/aadhk/restpos/bean/OrderModifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J

.field private itemid:J

.field private modifierCost:D

.field private modifierName:Ljava/lang/String;

.field private modifierPrice:D

.field private orderItemId:J

.field private orderid:J

.field private qty:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/aadhk/restpos/bean/OrderModifier$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderModifier$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/OrderModifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;DI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    .line 20
    iput-object p3, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    .line 21
    iput-wide p4, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierPrice:D

    .line 22
    iput p6, p0, Lcom/aadhk/restpos/bean/OrderModifier;->type:I

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->id:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderid:J

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderItemId:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierPrice:D

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierCost:D

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->qty:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->type:I

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 119
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 122
    iget-object v2, p1, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 123
    goto :goto_0

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    iget-object v3, p1, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->id:J

    return-wide v0
.end method

.method public getItemid()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    return-wide v0
.end method

.method public getModifierCost()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierCost:D

    return-wide v0
.end method

.method public getModifierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifierPrice()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierPrice:D

    return-wide v0
.end method

.method public getOrderItemId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderItemId:J

    return-wide v0
.end method

.method public getOrderid()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderid:J

    return-wide v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->qty:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 106
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 107
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->id:J

    .line 34
    return-void
.end method

.method public setItemid(J)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    .line 42
    return-void
.end method

.method public setModifierCost(D)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierCost:D

    .line 58
    return-void
.end method

.method public setModifierName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setModifierPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierPrice:D

    .line 50
    return-void
.end method

.method public setOrderItemId(J)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderItemId:J

    .line 90
    return-void
.end method

.method public setOrderid(J)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderid:J

    .line 82
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->qty:I

    .line 66
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->type:I

    .line 74
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderModifier [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierPrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierCost:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderModifier;->type:I

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
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->itemid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->orderItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->modifierCost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 161
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->qty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderModifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return-void
.end method
