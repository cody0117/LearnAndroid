.class public Lcom/aadhk/restpos/bean/Sort;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private desc:Z

.field private id:I

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/aadhk/restpos/bean/Sort;->id:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Sort;->query:Ljava/lang/String;

    return-object v0
.end method

.method public isDesc()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Sort;->desc:Z

    return v0
.end method

.method public setDesc(Z)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Sort;->desc:Z

    .line 23
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/aadhk/restpos/bean/Sort;->id:I

    .line 15
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Sort;->query:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sort [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/Sort;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Sort;->desc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Sort;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
