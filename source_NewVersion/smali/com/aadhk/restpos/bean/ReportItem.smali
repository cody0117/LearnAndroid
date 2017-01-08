.class public Lcom/aadhk/restpos/bean/ReportItem;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private amount:D

.field private count:I

.field private id:J

.field private name:Ljava/lang/String;

.field private percentage:I


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
    .line 35
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/ReportItem;->amount:D

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/aadhk/restpos/bean/ReportItem;->count:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/ReportItem;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aadhk/restpos/bean/ReportItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/aadhk/restpos/bean/ReportItem;->percentage:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/ReportItem;->amount:D

    .line 40
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/aadhk/restpos/bean/ReportItem;->count:I

    .line 32
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/ReportItem;->id:J

    .line 16
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/bean/ReportItem;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPercentage(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/aadhk/restpos/bean/ReportItem;->percentage:I

    .line 49
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportItem [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/ReportItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/ReportItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/ReportItem;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/ReportItem;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/ReportItem;->percentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
