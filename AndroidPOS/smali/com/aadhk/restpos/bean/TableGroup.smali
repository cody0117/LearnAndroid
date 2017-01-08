.class public Lcom/aadhk/restpos/bean/TableGroup;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private name:Ljava/lang/String;

.field private tableGroupId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/aadhk/restpos/bean/TableGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTableGroupId()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/aadhk/restpos/bean/TableGroup;->tableGroupId:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/aadhk/restpos/bean/TableGroup;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTableGroupId(I)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput p1, p0, Lcom/aadhk/restpos/bean/TableGroup;->tableGroupId:I

    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TableGroup [tableGroupId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/TableGroup;->tableGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/TableGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
