.class public Lcom/aadhk/restpos/bean/SplitBill;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private amount:D

.field private id:J

.field private orderId:J

.field private paid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SplitBill;->amount:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SplitBill;->id:J

    return-wide v0
.end method

.method public getOrderId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SplitBill;->orderId:J

    return-wide v0
.end method

.method public isPaid()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/SplitBill;->paid:Z

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SplitBill;->amount:D

    .line 32
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SplitBill;->id:J

    .line 16
    return-void
.end method

.method public setOrderId(J)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SplitBill;->orderId:J

    .line 24
    return-void
.end method

.method public setPaid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/SplitBill;->paid:Z

    .line 40
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitBill [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SplitBill;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SplitBill;->orderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SplitBill;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/SplitBill;->paid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
