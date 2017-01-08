.class public Lcom/aadhk/restpos/bean/AppUpdate;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private downloadLink:Ljava/lang/String;

.field private type:I

.field private updateMessage:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aadhk/restpos/bean/AppUpdate;->downloadLink:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/aadhk/restpos/bean/AppUpdate;->type:I

    return v0
.end method

.method public getUpdateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/bean/AppUpdate;->updateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/aadhk/restpos/bean/AppUpdate;->version:I

    return v0
.end method

.method public setDownloadLink(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->downloadLink:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->type:I

    .line 45
    return-void
.end method

.method public setUpdateMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->updateMessage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->version:I

    .line 21
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update [version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->downloadLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->updateMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/AppUpdate;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
