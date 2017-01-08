.class public Lcom/aadhk/restpos/bean/Modifier;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private groupId:J

.field private id:J

.field private name:Ljava/lang/String;

.field private price:D

.field private qty:I

.field private required:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/Modifier;

    .line 74
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Modifier;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 77
    iget-object v2, p1, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget-object v2, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    return-wide v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 63
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

    return v0
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->groupId:J

    .line 24
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    .line 36
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    .line 42
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Modifier;->required:Z

    .line 54
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    .line 48
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Modifier [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Modifier;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Modifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Modifier;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Modifier;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Modifier;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
