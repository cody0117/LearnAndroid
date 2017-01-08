.class public Lcom/aadhk/restpos/bean/PriceSchedule;
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
            "Lcom/aadhk/restpos/bean/PriceSchedule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amtRate:D

.field private discountAmt:Z

.field private enable:Z

.field private endDate:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private fri:Z

.field private id:J

.field private itemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private itemNames:Ljava/lang/String;

.field private mon:Z

.field private name:Ljava/lang/String;

.field private sat:Z

.field private startDate:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private sun:Z

.field private thu:Z

.field private tue:Z

.field private wed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/aadhk/restpos/bean/PriceSchedule$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/PriceSchedule$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/PriceSchedule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    .line 183
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemNames:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_8

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 207
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    :goto_9
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->discountAmt:Z

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    :cond_1
    move v0, v2

    .line 194
    goto :goto_1

    :cond_2
    move v0, v2

    .line 195
    goto :goto_2

    :cond_3
    move v0, v2

    .line 196
    goto :goto_3

    :cond_4
    move v0, v2

    .line 197
    goto :goto_4

    :cond_5
    move v0, v2

    .line 198
    goto :goto_5

    :cond_6
    move v0, v2

    .line 199
    goto :goto_6

    :cond_7
    move v0, v2

    .line 200
    goto :goto_7

    .line 205
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    goto :goto_8

    :cond_9
    move v1, v2

    .line 208
    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getAmtRate()D
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    return-wide v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    return-wide v0
.end method

.method public getItemIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    return-object v0
.end method

.method public getItemNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemNames:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public isDiscountAmt()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->discountAmt:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    return v0
.end method

.method public isFri()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    return v0
.end method

.method public isMon()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    return v0
.end method

.method public isSat()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    return v0
.end method

.method public isSun()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    return v0
.end method

.method public isThu()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    return v0
.end method

.method public isTue()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    return v0
.end method

.method public isWed()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    return v0
.end method

.method public setAmtRate(D)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    .line 157
    return-void
.end method

.method public setDiscountAmt(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->discountAmt:Z

    .line 149
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    .line 141
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setFri(Z)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    .line 125
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    .line 37
    return-void
.end method

.method public setItemIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    .line 165
    return-void
.end method

.method public setItemNames(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemNames:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setMon(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    .line 93
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSat(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    .line 133
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSun(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    .line 85
    return-void
.end method

.method public setThu(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    .line 117
    return-void
.end method

.method public setTue(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    .line 101
    return-void
.end method

.method public setWed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    .line 109
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PriceSchedule [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amtRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discountAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->discountAmt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 218
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemNames:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 230
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 231
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 232
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    if-nez v0, :cond_8

    .line 234
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 239
    :goto_8
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 240
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->discountAmt:Z

    if-eqz v0, :cond_9

    :goto_9
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 241
    return-void

    :cond_0
    move v0, v2

    .line 225
    goto :goto_0

    :cond_1
    move v0, v2

    .line 226
    goto :goto_1

    :cond_2
    move v0, v2

    .line 227
    goto :goto_2

    :cond_3
    move v0, v2

    .line 228
    goto :goto_3

    :cond_4
    move v0, v2

    .line 229
    goto :goto_4

    :cond_5
    move v0, v2

    .line 230
    goto :goto_5

    :cond_6
    move v0, v2

    .line 231
    goto :goto_6

    :cond_7
    move v0, v2

    .line 232
    goto :goto_7

    .line 236
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_8

    :cond_9
    move v1, v2

    .line 240
    goto :goto_9
.end method
