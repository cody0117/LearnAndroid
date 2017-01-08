.class public Lcom/aadhk/restpos/bean/CashRegister;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private amount:D

.field private date:Ljava/lang/String;

.field private id:J

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
    .line 19
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->amount:D

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->id:J

    return-wide v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTranxType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/aadhk/restpos/bean/CashRegister;->tranxType:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->amount:D

    .line 23
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->date:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->id:J

    .line 17
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->note:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->time:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTranxType(I)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/aadhk/restpos/bean/CashRegister;->tranxType:I

    .line 29
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
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

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
