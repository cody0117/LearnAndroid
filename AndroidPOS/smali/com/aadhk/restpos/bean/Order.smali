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

.field private customer:Lcom/aadhk/restpos/bean/Customer;

.field private customerId:J

.field private customerName:Ljava/lang/String;

.field private discountAmt:D

.field private discountReason:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private gratuity:D

.field private hasUnpaidBill:Z

.field private hasVoidItem:Z

.field private id:J

.field private kitchenRemark:Ljava/lang/String;

.field private orderCount:I

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

.field private orderTime:Ljava/lang/String;

.field private personNum:I

.field private receiptNote:Ljava/lang/String;

.field private serviceAmt:D

.field private splitType:S

.field private status:I

.field private subTotal:D

.field private tableId:J

.field private tableName:Ljava/lang/String;

.field private tax1Amt:D

.field private tax1Name:Ljava/lang/String;

.field private tax2Amt:D

.field private tax2Name:Ljava/lang/String;

.field private tax3Amt:D

.field private tax3Name:Ljava/lang/String;

.field private waiterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/aadhk/restpos/bean/Order$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Customer;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customer:Lcom/aadhk/restpos/bean/Customer;

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderTime:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    .line 391
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->tax3Amt:D

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax3Name:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Order;->orderCount:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->gratuity:D

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    .line 415
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    const-class v1, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 419
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    .line 423
    const-class v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customer:Lcom/aadhk/restpos/bean/Customer;

    .line 424
    return-void

    :cond_1
    move v0, v2

    .line 392
    goto/16 :goto_0

    .line 417
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/aadhk/restpos/bean/Order;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    const-class v0, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
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
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    if-ne p0, p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 368
    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 370
    goto :goto_0

    .line 371
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/Order;

    .line 372
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Order;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 373
    goto :goto_0
.end method

.method public getAmount()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    return-wide v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    return-wide v0
.end method

.method public getCancelPerson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCashierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer()Lcom/aadhk/restpos/bean/Customer;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customer:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method public getCustomerId()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    return-wide v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountAmt()D
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    return-wide v0
.end method

.method public getDiscountReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGratuity()D
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->gratuity:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    return-wide v0
.end method

.method public getKitchenRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCount()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->orderCount:I

    return v0
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
    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    return-object v0
.end method

.method public getOrderNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
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
    .line 316
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    return-object v0
.end method

.method public getOrderTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNum()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    return v0
.end method

.method public getReceiptNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAmt()D
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    return-wide v0
.end method

.method public getSplitType()S
    .locals 1

    .prologue
    .line 156
    iget-short v0, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    return v0
.end method

.method public getSubTotal()D
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    return-wide v0
.end method

.method public getTableId()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    return-wide v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTax1Amt()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    return-wide v0
.end method

.method public getTax1Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTax2Amt()D
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    return-wide v0
.end method

.method public getTax2Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTax3Amt()D
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->tax3Amt:D

    return-wide v0
.end method

.method public getTax3Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax3Name:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 360
    return v0
.end method

.method public isHasUnpaidBill()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    return v0
.end method

.method public isHasVoidItem()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    .line 89
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    .line 257
    return-void
.end method

.method public setCancelPerson(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setCancelReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setCashierName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setCustomer(Lcom/aadhk/restpos/bean/Customer;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->customer:Lcom/aadhk/restpos/bean/Customer;

    .line 329
    return-void
.end method

.method public setCustomerId(J)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    .line 305
    return-void
.end method

.method public setCustomerName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setDiscountAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    .line 169
    return-void
.end method

.method public setDiscountReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setGratuity(D)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->gratuity:D

    .line 353
    return-void
.end method

.method public setHasUnpaidBill(Z)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    .line 297
    return-void
.end method

.method public setHasVoidItem(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    .line 73
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    .line 97
    return-void
.end method

.method public setKitchenRemark(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setOrderCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput p1, p0, Lcom/aadhk/restpos/bean/Order;->orderCount:I

    .line 345
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
    .line 224
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    .line 225
    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    .line 281
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
    .line 320
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderPayments:Ljava/util/List;

    .line 321
    return-void
.end method

.method public setOrderTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->orderTime:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setPersonNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    .line 121
    return-void
.end method

.method public setReceiptNote(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setServiceAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    .line 209
    return-void
.end method

.method public setSplitType(S)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-short p1, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    .line 161
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    .line 153
    return-void
.end method

.method public setSubTotal(D)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    .line 217
    return-void
.end method

.method public setTableId(J)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    .line 113
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setTax1Amt(D)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    .line 177
    return-void
.end method

.method public setTax1Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setTax2Amt(D)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    .line 185
    return-void
.end method

.method public setTax2Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setTax3Amt(D)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Order;->tax3Amt:D

    .line 193
    return-void
.end method

.method public setTax3Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->tax3Name:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setWaiterName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
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

    const-string v1, ", orderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->orderTime:Ljava/lang/String;

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

    const-string v1, ", kitchenRemark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

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

    const-string v1, ", tax3Amt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->tax3Amt:D

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

    const-string v1, ", tax3Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->tax3Name:Ljava/lang/String;

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

    const-string v1, ", orderCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Order;->orderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gratuity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Order;->gratuity:D

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

    const-string v1, ", customer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Order;->customer:Lcom/aadhk/restpos/bean/Customer;

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

    .line 433
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 434
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->billId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tableId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 439
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-short v0, p0, Lcom/aadhk/restpos/bean/Order;->splitType:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 441
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasUnpaidBill:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 442
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Order;->hasVoidItem:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 443
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->personNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cancelPerson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->waiterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->discountAmt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 449
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->discountReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->receiptNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tax1Amt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 452
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tax2Amt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 453
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->tax3Amt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 454
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax1Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->tax3Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->serviceAmt:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 458
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->subTotal:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 459
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->amount:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 460
    iget v0, p0, Lcom/aadhk/restpos/bean/Order;->orderCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Order;->gratuity:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 462
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    if-nez v0, :cond_2

    .line 463
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 468
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->cashierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Order;->customerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->kitchenRemark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->customer:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 473
    return-void

    :cond_0
    move v0, v2

    .line 441
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 442
    goto/16 :goto_1

    .line 465
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 466
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Order;->orderItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_2
.end method
