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

.field private discountAmt:D

.field private discountName:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private id:J

.field protected itemCost:D

.field private itemId:J

.field protected itemName:Ljava/lang/String;

.field protected itemPrice:D

.field private kitchenNoteGroupId:Ljava/lang/String;

.field private modifierGroupId:Ljava/lang/String;

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

.field private orderQty:I

.field private printerId:I

.field private qty:I

.field private remark:Ljava/lang/String;

.field private selected:Z

.field private startTime:Ljava/lang/String;

.field private status:I

.field protected stopSaleZeroQty:Z

.field private tableName:Ljava/lang/String;

.field private tax1Id:I

.field private tax2Id:I

.field private tax3Id:I

.field private warn:Z

.field private warnQty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/aadhk/restpos/bean/OrderItem$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderItem$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/OrderItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemCost:D

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    .line 326
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    const-class v3, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 330
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax3Id:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->kitchenNoteGroupId:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountName:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountAmt:D

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderQty:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warn:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->stopSaleZeroQty:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    .line 343
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 338
    goto :goto_1

    :cond_2
    move v0, v2

    .line 340
    goto :goto_2

    :cond_3
    move v1, v2

    .line 341
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    if-ne p0, p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 298
    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 300
    goto :goto_0

    .line 301
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/OrderItem;

    .line 302
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 303
    goto :goto_0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    return-wide v0
.end method

.method public getCancelReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountAmt()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountAmt:D

    return-wide v0
.end method

.method public getDiscountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    return-wide v0
.end method

.method public getItemCost()D
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemCost:D

    return-wide v0
.end method

.method public getItemId()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    return-wide v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    return-wide v0
.end method

.method public getKitchenNoteGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->kitchenNoteGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifierGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()J
    .locals 2

    .prologue
    .line 161
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
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    return-object v0
.end method

.method public getOrderQty()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderQty:I

    return v0
.end method

.method public getPrinterId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    return v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTax1Id()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    return v0
.end method

.method public getTax2Id()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    return v0
.end method

.method public getTax3Id()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax3Id:I

    return v0
.end method

.method public getWarnQty()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 290
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    return v0
.end method

.method public isStopSaleZeroQty()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->stopSaleZeroQty:Z

    return v0
.end method

.method public isWarn()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warn:Z

    return v0
.end method

.method public setBillId(J)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    .line 238
    return-void
.end method

.method public setCancelReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setDiscountAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountAmt:D

    .line 214
    return-void
.end method

.method public setDiscountName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    .line 78
    return-void
.end method

.method public setItemCost(D)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemCost:D

    .line 102
    return-void
.end method

.method public setItemId(J)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    .line 158
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setItemPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    .line 94
    return-void
.end method

.method public setKitchenNoteGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->kitchenNoteGroupId:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setModifierGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setOrderId(J)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    .line 166
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
    .line 173
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    .line 174
    return-void
.end method

.method public setOrderQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderQty:I

    .line 118
    return-void
.end method

.method public setPrinterId(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    .line 70
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    .line 110
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    .line 230
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    .line 54
    return-void
.end method

.method public setStopSaleZeroQty(Z)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->stopSaleZeroQty:Z

    .line 278
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTax1Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    .line 182
    return-void
.end method

.method public setTax2Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    .line 190
    return-void
.end method

.method public setTax3Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax3Id:I

    .line 198
    return-void
.end method

.method public setWarn(Z)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->warn:Z

    .line 262
    return-void
.end method

.method public setWarnQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    .line 270
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
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

    const-string v1, ", itemCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemCost:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stopSaleZeroQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->stopSaleZeroQty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

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

    const-string v1, ", orderModifiers="

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

    const-string v1, ", tax3Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax3Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kitchenNoteGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->kitchenNoteGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discountAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountAmt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderQty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/OrderItem;->warn:Z

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

    .line 352
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 355
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->billId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 356
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemPrice:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 360
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->itemCost:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 361
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->qty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->cancelReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 373
    :goto_0
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->printerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax1Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax2Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->tax3Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->modifierGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->kitchenNoteGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/OrderItem;->discountAmt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 381
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->selected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 382
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderQty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warn:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->stopSaleZeroQty:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 385
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->warnQty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    return-void

    .line 370
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderItem;->orderModifiers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 381
    goto :goto_1

    :cond_2
    move v0, v2

    .line 383
    goto :goto_2

    :cond_3
    move v1, v2

    .line 384
    goto :goto_3
.end method
