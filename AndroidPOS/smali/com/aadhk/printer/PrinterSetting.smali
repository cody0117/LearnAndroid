.class public Lcom/aadhk/printer/PrinterSetting;
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
            "Lcom/aadhk/printer/PrinterSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btName:Ljava/lang/String;

.field private commBeep:Ljava/lang/String;

.field private commCut:Ljava/lang/String;

.field private commDrawer:Ljava/lang/String;

.field private commInitial:Ljava/lang/String;

.field private commTitleSize:Ljava/lang/String;

.field private connType:I

.field private enableBeep:Z

.field private hostingIp:Ljava/lang/String;

.field private id:I

.field private ip:Ljava/lang/String;

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I

.field private model:Ljava/lang/String;

.field private openDrawer:Z

.field private paperWidth:I

.field private port:I

.field private printNum:I

.field private printerName:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private usbName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/aadhk/printer/j;

    invoke-direct {v0}, Lcom/aadhk/printer/j;-><init>()V

    sput-object v0, Lcom/aadhk/printer/PrinterSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 299
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->id:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->ip:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->printerName:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->paperWidth:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->connType:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/printer/PrinterSetting;->openDrawer:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->port:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->model:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->printNum:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commInitial:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commTitleSize:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commCut:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commDrawer:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commBeep:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/aadhk/printer/PrinterSetting;->enableBeep:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->hostingIp:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->serviceName:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->usbName:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->btName:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginTop:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginBottom:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginLeft:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginRight:I

    .line 254
    return-void

    :cond_0
    move v0, v2

    .line 236
    goto :goto_0

    :cond_1
    move v1, v2

    .line 245
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public getBtName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->btName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommBeep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commBeep:Ljava/lang/String;

    return-object v0
.end method

.method public getCommCut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commCut:Ljava/lang/String;

    return-object v0
.end method

.method public getCommDrawer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commDrawer:Ljava/lang/String;

    return-object v0
.end method

.method public getCommInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commInitial:Ljava/lang/String;

    return-object v0
.end method

.method public getCommTitleSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commTitleSize:Ljava/lang/String;

    return-object v0
.end method

.method public getConnType()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->connType:I

    return v0
.end method

.method public getHostingIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->hostingIp:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->id:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMarginBottom()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginRight:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginTop:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPaperWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->paperWidth:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->port:I

    return v0
.end method

.method public getPrintNum()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->printNum:I

    return v0
.end method

.method public getPrinterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->printerName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->usbName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableBeep()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/aadhk/printer/PrinterSetting;->enableBeep:Z

    return v0
.end method

.method public isOpenDrawer()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/aadhk/printer/PrinterSetting;->openDrawer:Z

    return v0
.end method

.method public setBtName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->btName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setCommBeep(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->commBeep:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setCommCut(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->commCut:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCommDrawer(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->commDrawer:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setCommInitial(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->commInitial:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCommTitleSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->commTitleSize:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setConnType(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->connType:I

    .line 77
    return-void
.end method

.method public setEnableBeep(Z)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/aadhk/printer/PrinterSetting;->enableBeep:Z

    .line 213
    return-void
.end method

.method public setHostingIp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->hostingIp:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->id:I

    .line 45
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->ip:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMarginBottom(I)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->marginBottom:I

    .line 165
    return-void
.end method

.method public setMarginLeft(I)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->marginLeft:I

    .line 149
    return-void
.end method

.method public setMarginRight(I)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->marginRight:I

    .line 157
    return-void
.end method

.method public setMarginTop(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->marginTop:I

    .line 141
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->model:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOpenDrawer(Z)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/aadhk/printer/PrinterSetting;->openDrawer:Z

    .line 221
    return-void
.end method

.method public setPaperWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->paperWidth:I

    .line 69
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->port:I

    .line 85
    return-void
.end method

.method public setPrintNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/aadhk/printer/PrinterSetting;->printNum:I

    .line 197
    return-void
.end method

.method public setPrinterName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->printerName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->serviceName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setUsbName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/aadhk/printer/PrinterSetting;->usbName:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrinterSetting [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->printerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paperWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->paperWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->connType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openDrawer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/printer/PrinterSetting;->openDrawer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->printNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commInitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->commInitial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commTitleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->commTitleSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commCut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->commCut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commDrawer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->commDrawer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commBeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->commBeep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableBeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aadhk/printer/PrinterSetting;->enableBeep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostingIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->hostingIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", marginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->marginTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->marginLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", marginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->marginRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", marginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/printer/PrinterSetting;->marginBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usbName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->usbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", btName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/printer/PrinterSetting;->btName:Ljava/lang/String;

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

    .line 263
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->printerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->paperWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->connType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-boolean v0, p0, Lcom/aadhk/printer/PrinterSetting;->openDrawer:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->printNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commInitial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commTitleSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commCut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commDrawer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->commBeep:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/aadhk/printer/PrinterSetting;->enableBeep:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->hostingIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->usbName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/aadhk/printer/PrinterSetting;->btName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lcom/aadhk/printer/PrinterSetting;->marginRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v1, v2

    .line 277
    goto :goto_1
.end method
