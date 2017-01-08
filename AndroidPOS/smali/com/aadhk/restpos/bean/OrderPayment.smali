.class public Lcom/aadhk/restpos/bean/OrderPayment;
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
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private cashierName:Ljava/lang/String;

.field private changeAmt:D

.field private id:J

.field private orderId:J

.field private paid:D

.field private paymentMethodName:Ljava/lang/String;

.field private paymentMethodType:I

.field private paymentTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/aadhk/restpos/bean/OrderPayment$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/OrderPayment$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/OrderPayment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->id:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->orderId:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->amount:D

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentTime:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodType:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->cashierName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->changeAmt:D

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paid:D

    .line 93
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->amount:D

    return-wide v0
.end method

.method public getCashierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->cashierName:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAmt()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->changeAmt:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->id:J

    return-wide v0
.end method

.method public getOrderId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->orderId:J

    return-wide v0
.end method

.method public getPaid()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paid:D

    return-wide v0
.end method

.method public getPaymentMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodType:I

    return v0
.end method

.method public getPaymentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->amount:D

    .line 35
    return-void
.end method

.method public setCashierName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->cashierName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setChangeAmt(D)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->changeAmt:D

    .line 67
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->id:J

    .line 23
    return-void
.end method

.method public setOrderId(J)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->orderId:J

    .line 29
    return-void
.end method

.method public setPaid(D)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paid:D

    .line 73
    return-void
.end method

.method public setPaymentMethodName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPaymentMethodType(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodType:I

    .line 50
    return-void
.end method

.method public setPaymentTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentTime:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderPayment [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->orderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentMethodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentMethodType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cashierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->cashierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->changeAmt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paid:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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
    .line 102
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->orderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paymentMethodType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->cashierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->changeAmt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/OrderPayment;->paid:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 111
    return-void
.end method
