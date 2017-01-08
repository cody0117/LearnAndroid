.class public Lcom/aadhk/restpos/bean/Supplement;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private id:J

.field private itemid:J

.field private name:Ljava/lang/String;

.field private price:D

.field private qty:I

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
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Supplement;->itemid:J

    .line 14
    iput-object p3, p0, Lcom/aadhk/restpos/bean/Supplement;->name:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/aadhk/restpos/bean/Supplement;->price:D

    .line 16
    iput p6, p0, Lcom/aadhk/restpos/bean/Supplement;->type:I

    .line 17
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/Supplement;

    .line 88
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Supplement;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Supplement;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Supplement;->id:J

    return-wide v0
.end method

.method public getItemid()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Supplement;->itemid:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Supplement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Supplement;->price:D

    return-wide v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/aadhk/restpos/bean/Supplement;->qty:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/aadhk/restpos/bean/Supplement;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Supplement;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Supplement;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 76
    return v0
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Supplement;->id:J

    .line 29
    return-void
.end method

.method public setItemid(J)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Supplement;->itemid:J

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Supplement;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Supplement;->price:D

    .line 53
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/aadhk/restpos/bean/Supplement;->qty:I

    .line 61
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/aadhk/restpos/bean/Supplement;->type:I

    .line 69
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Supplement [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Supplement;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Supplement;->itemid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Supplement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Supplement;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Supplement;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Supplement;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
