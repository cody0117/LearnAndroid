.class public Lcom/aadhk/restpos/bean/Item;
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
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private askPrice:Z

.field private background:Ljava/lang/String;

.field private categoryId:J

.field private cost:D

.field private description:Ljava/lang/String;

.field private fontColor:Ljava/lang/String;

.field private id:J

.field private kitchenNoteGroupIds:Ljava/lang/String;

.field private modifierGroupIds:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private orderQty:I

.field private picked:Z

.field private picture:Ljava/lang/String;

.field private price:D

.field private printerId:I

.field private qty:I

.field private sequence:I

.field private stopSaleZeroQty:Z

.field private tax1Id:I

.field private tax2Id:I

.field private tax3Id:I

.field private warn:Z

.field private warnQty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/aadhk/restpos/bean/Item$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Item$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;DLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    .line 34
    iput-object p3, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    .line 36
    iput-object p6, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->cost:D

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->kitchenNoteGroupIds:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->tax3Id:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->picked:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->orderQty:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->warn:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->askPrice:Z

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->stopSaleZeroQty:Z

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    .line 278
    return-void

    :cond_0
    move v0, v2

    .line 272
    goto :goto_0

    :cond_1
    move v0, v2

    .line 274
    goto :goto_1

    :cond_2
    move v0, v2

    .line 275
    goto :goto_2

    :cond_3
    move v1, v2

    .line 276
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    if-ne p0, p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 245
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/Item;

    .line 249
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Item;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    return-wide v0
.end method

.method public getCost()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->cost:D

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    return-wide v0
.end method

.method public getKitchenNoteGroupIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->kitchenNoteGroupIds:Ljava/lang/String;

    return-object v0
.end method

.method public getModifierGroupIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderQty()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->orderQty:I

    return v0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    return-wide v0
.end method

.method public getPrinterId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    return v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    return v0
.end method

.method public getTax1Id()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    return v0
.end method

.method public getTax2Id()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    return v0
.end method

.method public getTax3Id()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax3Id:I

    return v0
.end method

.method public getWarnQty()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 237
    return v0
.end method

.method public isAskPrice()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->askPrice:Z

    return v0
.end method

.method public isPicked()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->picked:Z

    return v0
.end method

.method public isStopSaleZeroQty()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->stopSaleZeroQty:Z

    return v0
.end method

.method public isWarn()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->warn:Z

    return v0
.end method

.method public setAskPrice(Z)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Item;->askPrice:Z

    .line 225
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    .line 57
    return-void
.end method

.method public setCost(D)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->cost:D

    .line 81
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setFontColor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    .line 49
    return-void
.end method

.method public setKitchenNoteGroupIds(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->kitchenNoteGroupIds:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setModifierGroupIds(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setOrderQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->orderQty:I

    .line 201
    return-void
.end method

.method public setPicked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Item;->picked:Z

    .line 177
    return-void
.end method

.method public setPicture(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    .line 73
    return-void
.end method

.method public setPrinterId(I)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    .line 137
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    .line 129
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    .line 145
    return-void
.end method

.method public setStopSaleZeroQty(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Item;->stopSaleZeroQty:Z

    .line 89
    return-void
.end method

.method public setTax1Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    .line 153
    return-void
.end method

.method public setTax2Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    .line 161
    return-void
.end method

.method public setTax3Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->tax3Id:I

    .line 169
    return-void
.end method

.method public setWarn(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Item;->warn:Z

    .line 209
    return-void
.end method

.method public setWarnQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    .line 217
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->cost:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierGroupIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kitchenNoteGroupIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->kitchenNoteGroupIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax1Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax2Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax3Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->tax3Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->picked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->orderQty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->warn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", askPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->askPrice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stopSaleZeroQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->stopSaleZeroQty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warnQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

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
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 291
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->cost:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 292
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->kitchenNoteGroupIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax3Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->picked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 305
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->orderQty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->warn:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 307
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->askPrice:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 308
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->stopSaleZeroQty:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 309
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    return-void

    :cond_0
    move v0, v2

    .line 304
    goto :goto_0

    :cond_1
    move v0, v2

    .line 306
    goto :goto_1

    :cond_2
    move v0, v2

    .line 307
    goto :goto_2

    :cond_3
    move v1, v2

    .line 308
    goto :goto_3
.end method
