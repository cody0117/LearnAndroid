.class public Lcom/aadhk/restpos/bean/CloseOutCashRegister;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private date:Ljava/lang/String;

.field private id:J

.field private lastTime:Ljava/lang/String;

.field private nextAmount:D

.field private startAmount:D

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->id:J

    return-wide v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNextAmount()D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->nextAmount:D

    return-wide v0
.end method

.method public getStartAmount()D
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->startAmount:D

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->date:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->id:J

    .line 16
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->lastTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNextAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->nextAmount:D

    .line 28
    return-void
.end method

.method public setStartAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->startAmount:D

    .line 22
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->time:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColseOutCashRegister [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->startAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->nextAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->lastTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
