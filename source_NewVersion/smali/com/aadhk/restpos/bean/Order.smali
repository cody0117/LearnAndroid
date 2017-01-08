.class public Lcom/aadhk/restpos/bean/Order;
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
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private billId:J

.field private cancelPerson:Ljava/lang/String;

.field private cancelReason:Ljava/lang/String;

.field private cashierName:Ljava/lang/String;

.field private customerId:J

.field private customerName:Ljava/lang/String;

.field private discountAmt:D

.field private discountReason:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private hasUnpaidBill:Z

.field private hasVoidItem:Z

.field private id:J

.field private kitchenRemark:Ljava/lang/String;

.field private orderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderNum:Ljava/lang/String;

.field private orderPayments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private personNum:I

.field private receiptNote:Ljava/lang/String;

.field private serviceAmt:D

.field private splitType:S

.field private startTime:Ljava/lang/String;

.field private status:I

.field private subTotal:D

.field private tableId:J

.field private tableName:Ljava/lang/String;

.field private tax1Amt:D

.field private tax1Name:Ljava/lang/String;

.field private tax2Amt:D

.field private tax2Name:Ljava/lang/String;

.field private waiterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/aadhk/restpos/bean/Order$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->startTime:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    .line 344
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    .line 366
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    :cond_1
    move v1, v2

    .line 346
    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/aadhk/restpos/bean/Order;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    const-class v0, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/aadhk/restpos/bean/Order;->clone()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    if-ne p0, p1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 321
    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 323
    goto :goto_0

    .line 324
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/Order;

    .line 325
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Order;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public getAmount()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    return-wide v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    return-wide v0
.end method

.method public getCancelPerson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCashierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    return-wide v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountAmt()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    return-wide v0
.end method

.method public getDiscountReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    return-wide v0
.end method

.method public getKitchenRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    return-object v0
.end method

.method public getOrderNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    return-object v0
.end method

.method public getPersonNum()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    return v0
.end method

.method public getReceiptNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAmt()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    return-wide v0
.end method

.method public getSplitType()S
    .locals 1

    .prologue
    .line 149
    iget-short v0, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    return v0
.end method

.method public getSubTotal()D
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    return-wide v0
.end method

.method public getTableId()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    return-wide v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTax1Amt()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    return-wide v0
.end method

.method public getTax1Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTax2Amt()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    return-wide v0
.end method

.method public getTax2Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 313
    return v0
.end method

.method public isHasUnpaidBill()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    return v0
.end method

.method public isHasVoidItem()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    .line 82
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    .line 234
    return-void
.end method

.method public setCancelPerson(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setCancelReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCashierName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCustomerId(J)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    .line 290
    return-void
.end method

.method public setCustomerName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setDiscountAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    .line 162
    return-void
.end method

.method public setDiscountReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setHasUnpaidBill(Z)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    .line 282
    return-void
.end method

.method public setHasVoidItem(Z)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    .line 66
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    .line 90
    return-void
.end method

.method public setKitchenRemark(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setOrderItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    .line 202
    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setOrderPayments(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    .line 306
    return-void
.end method

.method public setPersonNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    .line 114
    return-void
.end method

.method public setReceiptNote(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setServiceAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    .line 186
    return-void
.end method

.method public setSplitType(S)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-short p1, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    .line 154
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->startTime:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput p1, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    .line 146
    return-void
.end method

.method public setSubTotal(D)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    .line 194
    return-void
.end method

.method public setTableId(J)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    .line 106
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTax1Amt(D)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    .line 170
    return-void
.end method

.method public setTax1Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setTax2Amt(D)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    .line 178
    return-void
.end method

.method public setTax2Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setWaiterName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Order [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", billId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", splitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasUnpaidBill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasVoidItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", personNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waiterName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cashierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discountAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discountReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kitchenRemark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiptNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax1Amt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax2Amt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax1Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax2Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderPayments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 375
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-short v0, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 383
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 385
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 391
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 395
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 396
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 399
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 400
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 401
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 403
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    return-void

    :cond_0
    move v0, v2

    .line 383
    goto :goto_0

    :cond_1
    move v1, v2

    .line 384
    goto :goto_1
.end method
