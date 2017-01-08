.class public Lcom/aadhk/restpos/bean/POSPrinterSetting;
.super Lcom/aadhk/printer/PrinterSetting;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceId:Ljava/lang/String;

.field private enable:Z

.field private enableTipGuide:Z

.field private fontSize:I

.field private footer:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private logoName:Ljava/lang/String;

.field private printSeparate:Z

.field private printType:I

.field private updateDate:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/aadhk/restpos/bean/POSPrinterSetting$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/aadhk/printer/PrinterSetting;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/aadhk/printer/PrinterSetting;-><init>(Landroid/os/Parcel;)V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->fontSize:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->logoName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->header:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->footer:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enable:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enableTipGuide:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printSeparate:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->deviceId:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->updateDate:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->user:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->locale:Ljava/lang/String;

    .line 153
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v0, v2

    .line 146
    goto :goto_1

    :cond_2
    move v1, v2

    .line 147
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->fontSize:I

    return v0
.end method

.method public getFooter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->footer:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->logoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printType:I

    return v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enable:Z

    return v0
.end method

.method public isEnableTipGuide()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enableTipGuide:Z

    return v0
.end method

.method public isPrintSeparate()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printSeparate:Z

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->deviceId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enable:Z

    .line 64
    return-void
.end method

.method public setEnableTipGuide(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enableTipGuide:Z

    .line 72
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->fontSize:I

    .line 32
    return-void
.end method

.method public setFooter(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->footer:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->header:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->locale:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setLogoName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->logoName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setPrintSeparate(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printSeparate:Z

    .line 80
    return-void
.end method

.method public setPrintType(I)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printType:I

    .line 56
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->updateDate:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->user:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POSPrinterSetting [fontSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->fontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->logoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", footer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->footer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableTipGuide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enableTipGuide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printSeparate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printSeparate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/aadhk/printer/PrinterSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/aadhk/printer/PrinterSetting;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    iget v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->fontSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->logoName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->footer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 169
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->enableTipGuide:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 170
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->printSeparate:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->updateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/bean/POSPrinterSetting;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    :cond_1
    move v0, v2

    .line 169
    goto :goto_1

    :cond_2
    move v1, v2

    .line 170
    goto :goto_2
.end method
