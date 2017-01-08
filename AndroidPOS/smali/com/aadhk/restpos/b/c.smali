.class public final Lcom/aadhk/restpos/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "logoName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "address2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tax1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tax1Name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tax2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tax2Name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tax3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tax3Name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "itemPriceIncludeTax"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "serviceAfterTax"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deliveryAfterTax"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "discountAfterTax"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "taxNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "serviceFeeIdDineIn"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "includeServiceFeeDineIn"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "serviceFeeIdTakeOut"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "includeServiceFeeTakeOut"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "serviceFeeIdDelivery"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "includeServiceFeeDelivery"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "decimalPlace"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "tip"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "timeIn"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "timeOut"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aadhk/restpos/b/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/bean/Company;
    .locals 12

    .prologue
    const/16 v11, 0x18

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 137
    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/b/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_company"

    sget-object v3, Lcom/aadhk/restpos/b/c;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v4, Lcom/aadhk/restpos/bean/Company;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Company;-><init>()V

    .line 142
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setId(I)V

    .line 143
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setName(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setLogoName(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setAddress1(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setAddress2(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTel(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setEmail(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/Company;->setTax1(D)V

    .line 150
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTax1Name(Ljava/lang/String;)V

    .line 151
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/Company;->setTax2(D)V

    .line 152
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTax2Name(Ljava/lang/String;)V

    .line 153
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/Company;->setTax3(D)V

    .line 154
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTax3Name(Ljava/lang/String;)V

    .line 155
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setItemPriceIncludeTax(Z)V

    .line 156
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setServiceAfterTax(Z)V

    .line 157
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_2
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setDeliveryAfterTax(Z)V

    .line 158
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_3
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setDiscountAfterTax(Z)V

    .line 159
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTaxNumber(Ljava/lang/String;)V

    .line 160
    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setServiceFeeIdDineIn(I)V

    .line 161
    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    :goto_4
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setIncludeServiceFeeDineIn(Z)V

    .line 162
    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setServiceFeeIdTakeOut(I)V

    .line 163
    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v10

    :goto_5
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setIncludeServiceFeeTakeOut(Z)V

    .line 164
    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setServiceFeeIdDelivery(I)V

    .line 165
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    invoke-virtual {v4, v10}, Lcom/aadhk/restpos/bean/Company;->setIncludeServiceFeeDelivery(Z)V

    .line 166
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setCurrency(Ljava/lang/String;)V

    .line 167
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setCurrencySign(Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setDecimalPlace(I)V

    .line 169
    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTimeIn(Ljava/lang/String;)V

    .line 170
    const/16 v0, 0x1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Company;->setTimeOut(Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    return-object v4

    :cond_1
    move v0, v1

    .line 155
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 156
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 157
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 158
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 161
    goto :goto_4

    :cond_6
    move v0, v1

    .line 163
    goto :goto_5

    :cond_7
    move v10, v1

    .line 165
    goto :goto_6
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;)V
    .locals 4
    .parameter

    .prologue
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "address1"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "address2"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "tel"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "email"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "tax1"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 34
    const-string v1, "tax2"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 35
    const-string v1, "tax3"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 36
    const-string v1, "tax1Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "tax2Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "tax3Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "itemPriceIncludeTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 40
    const-string v1, "serviceAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isServiceAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    const-string v1, "deliveryAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isDeliveryAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    const-string v1, "discountAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isDiscountAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    const-string v1, "taxNumber"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "serviceFeeIdDineIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v1, "includeServiceFeeDineIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    const-string v1, "serviceFeeIdTakeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v1, "includeServiceFeeTakeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    const-string v1, "serviceFeeIdDelivery"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v1, "includeServiceFeeDelivery"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    const-string v1, "currency"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "decimalPlace"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v1, "timeIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "timeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/aadhk/restpos/b/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_company"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 55
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    if-nez p2, :cond_1

    .line 113
    const-string v1, "serviceFeeIdDineIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "includeServiceFeeDineIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/b/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_company"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    return-void

    .line 115
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 116
    const-string v1, "serviceFeeIdTakeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v1, "includeServiceFeeTakeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 119
    const-string v1, "serviceFeeIdDelivery"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v1, "includeServiceFeeDelivery"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Company;)V
    .locals 5
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "address1"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "address2"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "tel"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "email"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "tax1"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 71
    const-string v1, "tax2"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 72
    const-string v1, "tax3"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 73
    const-string v1, "tax1Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "tax2Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "tax3Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "itemPriceIncludeTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    const-string v1, "serviceAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isServiceAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    const-string v1, "deliveryAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isDeliveryAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 79
    const-string v1, "discountAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isDiscountAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    const-string v1, "taxNumber"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "serviceFeeIdDineIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDineIn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v1, "includeServiceFeeDineIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDineIn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    const-string v1, "serviceFeeIdTakeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdTakeOut()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v1, "includeServiceFeeTakeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeTakeOut()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    const-string v1, "serviceFeeIdDelivery"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getServiceFeeIdDelivery()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "includeServiceFeeDelivery"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isIncludeServiceFeeDelivery()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    const-string v1, "currency"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "decimalPlace"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "timeIn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "timeOut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/aadhk/restpos/b/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_company"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public final c(Lcom/aadhk/restpos/bean/Company;)V
    .locals 5
    .parameter

    .prologue
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v1, "tax1"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 97
    const-string v1, "tax2"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 98
    const-string v1, "tax3"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 99
    const-string v1, "tax1Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "tax2Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "tax3Name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTax3Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "itemPriceIncludeTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    const-string v1, "serviceAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isServiceAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    const-string v1, "deliveryAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isDeliveryAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    const-string v1, "discountAfterTax"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->isDiscountAfterTax()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    const-string v1, "taxNumber"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getTaxNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/aadhk/restpos/b/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_company"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Company;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    return-void
.end method
