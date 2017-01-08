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

.field private enable:Z

.field private endDate:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private fri:Z

.field private id:J

.field private isDisAmt:Z

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
    .line 233
    new-instance v0, Lcom/aadhk/restpos/bean/PriceSchedule$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/PriceSchedule$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/PriceSchedule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    .line 174
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_8

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 197
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    :goto_9
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt:Z

    .line 199
    return-void

    :cond_0
    move v0, v2

    .line 183
    goto :goto_0

    :cond_1
    move v0, v2

    .line 184
    goto :goto_1

    :cond_2
    move v0, v2

    .line 185
    goto :goto_2

    :cond_3
    move v0, v2

    .line 186
    goto :goto_3

    :cond_4
    move v0, v2

    .line 187
    goto :goto_4

    :cond_5
    move v0, v2

    .line 188
    goto :goto_5

    :cond_6
    move v0, v2

    .line 189
    goto :goto_6

    :cond_7
    move v0, v2

    .line 190
    goto :goto_7

    .line 195
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    goto :goto_8

    :cond_9
    move v1, v2

    .line 198
    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getAmtRate()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    return-wide v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 31
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
    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public isDisAmt()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    return v0
.end method

.method public isFri()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    return v0
.end method

.method public isMon()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    return v0
.end method

.method public isSat()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    return v0
.end method

.method public isSun()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    return v0
.end method

.method public isThu()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    return v0
.end method

.method public isTue()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    return v0
.end method

.method public isWed()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    return v0
.end method

.method public setAmtRate(D)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    .line 156
    return-void
.end method

.method public setDisAmt(Z)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt:Z

    .line 148
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    .line 140
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFri(Z)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    .line 124
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    .line 36
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
    .line 163
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setMon(Z)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    .line 92
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSat(Z)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    .line 132
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSun(Z)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    .line 84
    return-void
.end method

.method public setThu(Z)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    .line 116
    return-void
.end method

.method public setTue(Z)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    .line 100
    return-void
.end method

.method public setWed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    .line 108
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
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

    const-string v1, ", amtRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDisAmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt:Z

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

    .line 208
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sun:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 215
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->mon:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->tue:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 217
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->wed:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->thu:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->fri:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 220
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->sat:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 221
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->enable:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    if-nez v0, :cond_8

    .line 223
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    :goto_8
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->amtRate:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 229
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->isDisAmt:Z

    if-eqz v0, :cond_9

    :goto_9
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 230
    return-void

    :cond_0
    move v0, v2

    .line 214
    goto :goto_0

    :cond_1
    move v0, v2

    .line 215
    goto :goto_1

    :cond_2
    move v0, v2

    .line 216
    goto :goto_2

    :cond_3
    move v0, v2

    .line 217
    goto :goto_3

    :cond_4
    move v0, v2

    .line 218
    goto :goto_4

    :cond_5
    move v0, v2

    .line 219
    goto :goto_5

    :cond_6
    move v0, v2

    .line 220
    goto :goto_6

    :cond_7
    move v0, v2

    .line 221
    goto :goto_7

    .line 225
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/bean/PriceSchedule;->itemIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_8

    :cond_9
    move v1, v2

    .line 229
    goto :goto_9
.end method
