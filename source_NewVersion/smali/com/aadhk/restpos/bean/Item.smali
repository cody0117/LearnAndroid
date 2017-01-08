.class public Lcom/aadhk/restpos/bean/Item;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private background:Ljava/lang/String;

.field private categoryId:J

.field private description:Ljava/lang/String;

.field private fontColor:Ljava/lang/String;

.field private id:J

.field private isPicked:Z

.field private isWarn:Z

.field private modifierGroupIds:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private num:I

.field private picture:Ljava/lang/String;

.field private price:D

.field private printerId:I

.field private qty:I

.field private sequence:I

.field private supplements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Supplement;",
            ">;"
        }
    .end annotation
.end field

.field private tax1Id:I

.field private tax2Id:I

.field private warnQty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/aadhk/restpos/bean/Item$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Item$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->supplements:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;DLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    .line 37
    iput-object p3, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    .line 38
    iput-wide p4, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    .line 39
    iput-object p6, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->num:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->isPicked:Z

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->isWarn:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    .line 241
    return-void

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    :cond_1
    move v1, v2

    .line 239
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    if-ne p0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 213
    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_3
    check-cast p1, Lcom/aadhk/restpos/bean/Item;

    .line 217
    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    iget-wide v4, p1, Lcom/aadhk/restpos/bean/Item;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    return-wide v0
.end method

.method public getModifierGroupIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->num:I

    return v0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    return-wide v0
.end method

.method public getPrinterId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    return v0
.end method

.method public getQty()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    return v0
.end method

.method public getSupplements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Supplement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->supplements:Ljava/util/List;

    return-object v0
.end method

.method public getTax1Id()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    return v0
.end method

.method public getTax2Id()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    return v0
.end method

.method public getWarnQty()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    iget-wide v2, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 205
    return v0
.end method

.method public isPicked()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->isPicked:Z

    return v0
.end method

.method public isWarn()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->isWarn:Z

    return v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    .line 64
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setFontColor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    .line 56
    return-void
.end method

.method public setModifierGroupIds(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->num:I

    .line 121
    return-void
.end method

.method public setPicked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Item;->isPicked:Z

    .line 161
    return-void
.end method

.method public setPicture(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    .line 80
    return-void
.end method

.method public setPrinterId(I)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    .line 129
    return-void
.end method

.method public setQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    .line 177
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    .line 137
    return-void
.end method

.method public setSupplements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Supplement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Item;->supplements:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setTax1Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    .line 145
    return-void
.end method

.method public setTax2Id(I)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    .line 153
    return-void
.end method

.method public setWarn(Z)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Item;->isWarn:Z

    .line 185
    return-void
.end method

.method public setWarnQty(I)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    .line 193
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",fontColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax1Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tax2Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->isPicked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supplements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/Item;->supplements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWarn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/Item;->isWarn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warnQty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->categoryId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Item;->price:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 254
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->modifierGroupIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->printerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->picture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->background:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->fontColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Item;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax1Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->tax2Id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->isPicked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 265
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->qty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Item;->isWarn:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 267
    iget v0, p0, Lcom/aadhk/restpos/bean/Item;->warnQty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 264
    goto :goto_0

    :cond_1
    move v1, v2

    .line 266
    goto :goto_1
.end method
