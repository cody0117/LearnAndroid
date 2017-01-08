.class public Lcom/aadhk/restpos/bean/Versoin;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private tableName:Ljava/lang/String;

.field private tableVersion:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Versoin;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableVersion()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Versoin;->tableVersion:J

    return-wide v0
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Versoin;->tableName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setTableVersion(J)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Versoin;->tableVersion:J

    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VersoinDao [tableName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Versoin;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Versoin;->tableVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
