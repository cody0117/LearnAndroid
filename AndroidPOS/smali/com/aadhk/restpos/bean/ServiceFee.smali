.class public Lcom/aadhk/restpos/bean/ServiceFee;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private amount:D

.field private id:I

.field private name:Ljava/lang/String;

.field private percentage:Z


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
    .line 21
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/ServiceFee;->amount:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/aadhk/restpos/bean/ServiceFee;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/aadhk/restpos/bean/ServiceFee;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isPercentage()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/ServiceFee;->percentage:Z

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->amount:D

    .line 25
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput p1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->id:I

    .line 13
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPercentage(Z)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->percentage:Z

    .line 31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Discount [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->percentage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/ServiceFee;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
