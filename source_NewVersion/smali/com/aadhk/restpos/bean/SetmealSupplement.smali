.class public Lcom/aadhk/restpos/bean/SetmealSupplement;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private price:D

.field private qty:I

.field private setmealItemId:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;DI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->setmealItemId:J

    .line 14
    iput-object p3, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->name:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->price:D

    .line 16
    iput p6, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->type:I

    .line 17
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->price:D

    return-wide v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->qty:I

    return v0
.end method

.method public getSetmealItemId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->setmealItemId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->type:I

    return v0
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->id:J

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->price:D

    .line 53
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->qty:I

    .line 61
    return-void
.end method

.method public setSetmealItemId(J)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->setmealItemId:J

    .line 37
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->type:I

    .line 69
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetmealSupplement [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setmealItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->setmealItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/SetmealSupplement;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
