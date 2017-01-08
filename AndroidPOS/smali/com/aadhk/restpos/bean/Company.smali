.class public Lcom/aadhk/restpos/bean/Company;
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
            "Lcom/aadhk/restpos/bean/Company;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private currencySign:Ljava/lang/String;

.field private decimalPlace:I

.field private deliveryAfterTax:Z

.field private discountAfterTax:Z

.field private email:Ljava/lang/String;

.field private id:I

.field private includeServiceFeeDelivery:Z

.field private includeServiceFeeDineIn:Z

.field private includeServiceFeeTakeOut:Z

.field private itemPriceIncludeTax:Z

.field private logoBitmap:Landroid/graphics/Bitmap;

.field private logoName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private serviceAfterTax:Z

.field private serviceFeeIdDelivery:I

.field private serviceFeeIdDineIn:I

.field private serviceFeeIdTakeOut:I

.field private tax1:D

.field private tax1Name:Ljava/lang/String;

.field private tax2:D

.field private tax2Name:Ljava/lang/String;

.field private tax3:D

.field private tax3Name:Ljava/lang/String;

.field private taxNumber:Ljava/lang/String;

.field private tel:Ljava/lang/String;

.field private timeIn:Ljava/lang/String;

.field private timeOut:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/aadhk/restpos/bean/Company$1;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Company$1;-><init>()V

    sput-object v0, Lcom/aadhk/restpos/bean/Company;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Company;->id:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->name:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->address1:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->address2:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tel:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->currency:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->currencySign:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->email:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->timeIn:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->timeOut:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->logoName:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Company;->decimalPlace:I

    .line 299
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->logoBitmap:Landroid/graphics/Bitmap;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Company;->tax1:D

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Company;->tax2:D

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/aadhk/restpos/bean/Company;->tax3:D

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax1Name:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax2Name:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax3Name:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->itemPriceIncludeTax:Z

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceAfterTax:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->deliveryAfterTax:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->discountAfterTax:Z

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bean/Company;->taxNumber:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDineIn:Z

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDineIn:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeTakeOut:Z

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdTakeOut:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDelivery:Z

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDelivery:I

    .line 317
    return-void

    :cond_0
    move v0, v2

    .line 306
    goto :goto_0

    :cond_1
    move v0, v2

    .line 307
    goto :goto_1

    :cond_2
    move v0, v2

    .line 308
    goto :goto_2

    :cond_3
    move v0, v2

    .line 309
    goto :goto_3

    :cond_4
    move v0, v2

    .line 311
    goto :goto_4

    :cond_5
    move v0, v2

    .line 313
    goto :goto_5

    :cond_6
    move v1, v2

    .line 315
    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalPlace()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->decimalPlace:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->id:I

    return v0
.end method

.method public getLogoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->logoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLogoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->logoName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceFeeIdDelivery()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDelivery:I

    return v0
.end method

.method public getServiceFeeIdDineIn()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDineIn:I

    return v0
.end method

.method public getServiceFeeIdTakeOut()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdTakeOut:I

    return v0
.end method

.method public getTax1()D
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Company;->tax1:D

    return-wide v0
.end method

.method public getTax1Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTax2()D
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Company;->tax2:D

    return-wide v0
.end method

.method public getTax2Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTax3()D
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/aadhk/restpos/bean/Company;->tax3:D

    return-wide v0
.end method

.method public getTax3Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax3Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->taxNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->timeIn:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->timeOut:Ljava/lang/String;

    return-object v0
.end method

.method public isDeliveryAfterTax()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->deliveryAfterTax:Z

    return v0
.end method

.method public isDiscountAfterTax()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->discountAfterTax:Z

    return v0
.end method

.method public isIncludeServiceFeeDelivery()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDelivery:Z

    return v0
.end method

.method public isIncludeServiceFeeDineIn()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDineIn:Z

    return v0
.end method

.method public isIncludeServiceFeeTakeOut()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeTakeOut:Z

    return v0
.end method

.method public isItemPriceIncludeTax()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->itemPriceIncludeTax:Z

    return v0
.end method

.method public isServiceAfterTax()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceAfterTax:Z

    return v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->address1:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->address2:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->currency:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setCurrencySign(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->currencySign:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setDecimalPlace(I)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput p1, p0, Lcom/aadhk/restpos/bean/Company;->decimalPlace:I

    .line 212
    return-void
.end method

.method public setDeliveryAfterTax(Z)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->deliveryAfterTax:Z

    .line 164
    return-void
.end method

.method public setDiscountAfterTax(Z)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->discountAfterTax:Z

    .line 172
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->email:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/aadhk/restpos/bean/Company;->id:I

    .line 53
    return-void
.end method

.method public setIncludeServiceFeeDelivery(Z)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDelivery:Z

    .line 268
    return-void
.end method

.method public setIncludeServiceFeeDineIn(Z)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDineIn:Z

    .line 252
    return-void
.end method

.method public setIncludeServiceFeeTakeOut(Z)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeTakeOut:Z

    .line 260
    return-void
.end method

.method public setItemPriceIncludeTax(Z)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->itemPriceIncludeTax:Z

    .line 236
    return-void
.end method

.method public setLogoBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->logoBitmap:Landroid/graphics/Bitmap;

    .line 204
    return-void
.end method

.method public setLogoName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->logoName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setServiceAfterTax(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/aadhk/restpos/bean/Company;->serviceAfterTax:Z

    .line 156
    return-void
.end method

.method public setServiceFeeIdDelivery(I)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput p1, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDelivery:I

    .line 284
    return-void
.end method

.method public setServiceFeeIdDineIn(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDineIn:I

    .line 61
    return-void
.end method

.method public setServiceFeeIdTakeOut(I)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput p1, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdTakeOut:I

    .line 276
    return-void
.end method

.method public setTax1(D)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Company;->tax1:D

    .line 109
    return-void
.end method

.method public setTax1Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->tax1Name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTax2(D)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Company;->tax2:D

    .line 117
    return-void
.end method

.method public setTax2Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->tax2Name:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setTax3(D)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/aadhk/restpos/bean/Company;->tax3:D

    .line 125
    return-void
.end method

.method public setTax3Name(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->tax3Name:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTaxNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->taxNumber:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->tel:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTimeIn(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->timeIn:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setTimeOut(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Company;->timeOut:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->address1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->address2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->currencySign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->timeIn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->timeOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->logoName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->decimalPlace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 339
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Company;->tax1:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 340
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Company;->tax2:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 341
    iget-wide v3, p0, Lcom/aadhk/restpos/bean/Company;->tax3:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 342
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax1Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->tax3Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->itemPriceIncludeTax:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 346
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceAfterTax:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 347
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->deliveryAfterTax:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 348
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->discountAfterTax:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 349
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Company;->taxNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDineIn:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 351
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDineIn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeTakeOut:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdTakeOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-boolean v0, p0, Lcom/aadhk/restpos/bean/Company;->includeServiceFeeDelivery:Z

    if-eqz v0, :cond_6

    :goto_6
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 355
    iget v0, p0, Lcom/aadhk/restpos/bean/Company;->serviceFeeIdDelivery:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    :cond_1
    move v0, v2

    .line 346
    goto :goto_1

    :cond_2
    move v0, v2

    .line 347
    goto :goto_2

    :cond_3
    move v0, v2

    .line 348
    goto :goto_3

    :cond_4
    move v0, v2

    .line 350
    goto :goto_4

    :cond_5
    move v0, v2

    .line 352
    goto :goto_5

    :cond_6
    move v1, v2

    .line 354
    goto :goto_6
.end method
