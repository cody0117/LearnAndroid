.class public Lcom/aadhk/restpos/bean/SetmealItem;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private groupId:J

.field private id:J

.field private itemId:J

.field private name:Ljava/lang/String;

.field private num:I

.field private price:D

.field private setmealSupplements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/SetmealSupplement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->setmealSupplements:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/SetmealItem;

    .line 99
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 102
    iget-object v2, p1, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 105
    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->groupId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    return-wide v0
.end method

.method public getItemId()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->itemId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->num:I

    return v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->price:D

    return-wide v0
.end method

.method public getSetmealSupplements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/SetmealSupplement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->setmealSupplements:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 87
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->groupId:J

    .line 47
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    .line 31
    return-void
.end method

.method public setItemId(J)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->itemId:J

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->num:I

    .line 71
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->price:D

    .line 63
    return-void
.end method

.method public setSetmealSupplements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/SetmealSupplement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->setmealSupplements:Ljava/util/List;

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetmealItem [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->itemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setmealSupplements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/SetmealItem;->setmealSupplements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
