.class public Lcom/aadhk/restpos/bean/PaymentMethod;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private openDrawer:Z

.field private rounding:Ljava/lang/String;

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
.method public getId()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRounding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->rounding:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->type:I

    return v0
.end method

.method public isOpenDrawer()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->openDrawer:Z

    return v0
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->id:I

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setOpenDrawer(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->openDrawer:Z

    .line 49
    return-void
.end method

.method public setRounding(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->rounding:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->type:I

    .line 33
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentType [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rounding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->rounding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openDrawer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PaymentMethod;->openDrawer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
