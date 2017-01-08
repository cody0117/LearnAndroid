.class public Lcom/aadhk/restpos/bean/Table;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private id:J

.field private itemWait:Z

.field private name:Ljava/lang/String;

.field private num:I

.field private open:Z

.field private picked:Z

.field private receipt:Z

.field private sequence:I

.field private tableGroupId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Table;->id:J

    .line 27
    iput-object p3, p0, Lcom/aadhk/restpos/bean/Table;->name:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/aadhk/restpos/bean/Table;->open:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Table;->name:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/aadhk/restpos/bean/Table;->open:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Table;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Table;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/aadhk/restpos/bean/Table;->num:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/aadhk/restpos/bean/Table;->sequence:I

    return v0
.end method

.method public getTableGroupId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/aadhk/restpos/bean/Table;->tableGroupId:I

    return v0
.end method

.method public isItemWait()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Table;->itemWait:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Table;->open:Z

    return v0
.end method

.method public isPicked()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Table;->picked:Z

    return v0
.end method

.method public isReceipt()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Table;->receipt:Z

    return v0
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Table;->id:J

    .line 37
    return-void
.end method

.method public setItemWait(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Table;->itemWait:Z

    .line 85
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Table;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/aadhk/restpos/bean/Table;->num:I

    .line 61
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Table;->open:Z

    .line 53
    return-void
.end method

.method public setPicked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Table;->picked:Z

    .line 93
    return-void
.end method

.method public setReceipt(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Table;->receipt:Z

    .line 77
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/aadhk/restpos/bean/Table;->sequence:I

    .line 69
    return-void
.end method

.method public setTableGroupId(I)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput p1, p0, Lcom/aadhk/restpos/bean/Table;->tableGroupId:I

    .line 101
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Table [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Table;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Table;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Table;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Table;->open:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Table;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Table;->receipt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Table;->itemWait:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Table;->picked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tableGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Table;->tableGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
