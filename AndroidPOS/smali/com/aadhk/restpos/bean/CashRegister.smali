.class public Lcom/aadhk/restpos/bean/CashRegister;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private amount:D

.field private date:Ljava/lang/String;

.field private id:J

.field private lastTime:Z

.field private note:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private tranxType:I


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
    .line 20
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->amount:D

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->id:J

    return-wide v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTranxType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->tranxType:I

    return v0
.end method

.method public isLastTime()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->lastTime:Z

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->amount:D

    .line 24
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->date:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->id:J

    .line 18
    return-void
.end method

.method public setLastTime(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->lastTime:Z

    .line 55
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->note:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->time:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTranxType(I)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->tranxType:I

    .line 30
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CashRegister [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tranxType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->tranxType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", note="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/CashRegister;->lastTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
