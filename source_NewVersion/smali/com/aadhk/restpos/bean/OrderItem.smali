.class public Lcom/aadhk/restpos/bean/OrderItem;
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
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private billId:J

.field private cancelReason:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private disAmt:D

.field private disName:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private id:J

.field private isWarn:Z

.field private itemId:J

.field protected itemName:Ljava/lang/String;

.field protected itemPrice:D

.field private modifierGroupId:Ljava/lang/String;

.field private num:I

.field private orderId:J

.field private orderModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderModifier;",
            ">;"
        }
    .end annotation
.end field

.field private printerId:I

.field private qty:I

.field private remark:Ljava/lang/String;

.field private selected:Z

.field private startTime:Ljava/lang/String;

.field private status:I

.field private tableName:Ljava/lang/String;

.field private tax1Id:I

.field private tax2Id:I

.field private warnQty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/aadhk/restpos/bean/OrderItem$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderItem$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/OrderItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->num:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    const-class v3, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 293
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->disName:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->disAmt:D

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->isWarn:Z

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    .line 303
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 299
    goto :goto_1

    :cond_2
    move v1, v2

    .line 301
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    if-ne p0, p1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 262
    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 264
    goto :goto_0

    .line 265
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/OrderItem;

    .line 266
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    return-wide v0
.end method

.method public getCancelReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisAmt()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->disAmt:D

    return-wide v0
.end method

.method public getDisName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->disName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    return-wide v0
.end method

.method public getItemId()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    return-wide v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    return-wide v0
.end method

.method public getModifierGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->num:I

    return v0
.end method

.method public getOrderId()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    return-wide v0
.end method

.method public getOrderModifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    return-object v0
.end method

.method public getPrinterId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    return v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTax1Id()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    return v0
.end method

.method public getTax2Id()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    return v0
.end method

.method public getWarnQty()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 254
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    return v0
.end method

.method public isWarn()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->isWarn:Z

    return v0
.end method

.method public setBillId(J)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    .line 210
    return-void
.end method

.method public setCancelReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setDisAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->disAmt:D

    .line 186
    return-void
.end method

.method public setDisName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->disName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    .line 74
    return-void
.end method

.method public setItemId(J)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    .line 138
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setItemPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    .line 90
    return-void
.end method

.method public setModifierGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->num:I

    .line 98
    return-void
.end method

.method public setOrderId(J)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    .line 146
    return-void
.end method

.method public setOrderModifiers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderModifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    .line 154
    return-void
.end method

.method public setPrinterId(I)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    .line 66
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    .line 226
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    .line 202
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    .line 50
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTax1Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    .line 162
    return-void
.end method

.method public setTax2Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    .line 170
    return-void
.end method

.method public setWarn(Z)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->isWarn:Z

    .line 234
    return-void
.end method

.method public setWarnQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    .line 242
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderItem [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", billId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderSupplements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax1Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax2Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->disName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->disAmt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWarn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->isWarn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warnQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

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
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 313
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 315
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 320
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 332
    :goto_0
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->disName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->disAmt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 338
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 339
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 341
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return-void

    .line 329
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 330
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 338
    goto :goto_1

    :cond_2
    move v1, v2

    .line 340
    goto :goto_2
.end method
