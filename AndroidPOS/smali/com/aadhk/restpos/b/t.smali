.class public final Lcom/aadhk/restpos/b/t;
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
    .line 20
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "connType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "printType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "paperWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "commInitial"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "commTitleSize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "commCut"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "commDrawer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "commBeep"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "printNum"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "enable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "enableTipGuide"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "printSeparate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "logoName"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "header"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "footer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "fontSize"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "model"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "printerName"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hostingIp"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "serviceName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "btName"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "marginTop"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "marginBottom"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "marginLeft"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "marginRight"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "enableBeep"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "showCancelItem"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/t;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 194
    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    sget-object v3, Lcom/aadhk/restpos/b/t;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 197
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v5, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 199
    invoke-virtual {v5, p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setId(I)V

    .line 200
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 202
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 203
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintType(I)V

    .line 204
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 205
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommTitleSize(Ljava/lang/String;)V

    .line 207
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 208
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 209
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 210
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 211
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 212
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTipGuide(Z)V

    .line 213
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_2
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 214
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 215
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 216
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 217
    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 218
    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 219
    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrinterName(Ljava/lang/String;)V

    .line 220
    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 221
    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    .line 222
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setBtName(Ljava/lang/String;)V

    .line 223
    const/16 v0, 0x18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 224
    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 225
    const/16 v0, 0x1a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 226
    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 227
    const/16 v0, 0x1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v5, v10}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 230
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 231
    return-object v5

    :cond_1
    move v0, v1

    .line 211
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 212
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 213
    goto/16 :goto_2

    :cond_4
    move v10, v1

    .line 227
    goto :goto_3
.end method

.method public final a()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 276
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v3, v1

    const-string v5, "printerName"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    return-object v10
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string v1, "logoName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v1, "ip"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "port"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v1, "connType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v1, "printType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v1, "paperWidth"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "commInitial"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "commCut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "commDrawer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "commBeep"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "printNum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    const-string v1, "enableTipGuide"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTipGuide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    const-string v1, "enableBeep"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    const-string v1, "printSeparate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "header"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "footer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "fontSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "model"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "printerName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrinterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "marginTop"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "marginBottom"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "marginLeft"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "marginRight"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 290
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v3, v1

    const-string v4, "printerName"

    aput-object v4, v3, v11

    const-string v4, "printType=2"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    return-object v10
.end method

.method public final b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 5
    .parameter

    .prologue
    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    const-string v1, "hostingIp"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "printType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v1, "connType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v1, "paperWidth"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v1, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string v1, "enableTipGuide"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTipGuide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    const-string v1, "printSeparate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "header"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "footer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "fontSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v1, "printerName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrinterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "serviceName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "printNum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v1, "marginTop"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v1, "marginBottom"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v1, "marginLeft"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "marginRight"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    iget-object v1, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public final c()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 303
    const-string v4, "printType=1"

    iget-object v0, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    sget-object v3, Lcom/aadhk/restpos/b/t;->a:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setId(I)V

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintType(I)V

    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommTitleSize(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTipGuide(Z)V

    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_2
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrinterName(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setBtName(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    const/16 v0, 0x1a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    const/16 v0, 0x1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v5, v10}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v5

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v10, v1

    goto :goto_3
.end method

.method public final c(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 5
    .parameter

    .prologue
    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    const-string v1, "hostingIp"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHostingIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "printType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v1, "connType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v1, "paperWidth"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 143
    const-string v1, "enableTipGuide"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTipGuide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    const-string v1, "printSeparate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 145
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "header"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "footer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "fontSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v1, "printerName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrinterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "btName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getBtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "printNum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v1, "marginTop"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v1, "marginBottom"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v1, "marginLeft"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "marginRight"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    iget-object v1, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 353
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 355
    const-string v0, " printType=2"

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and enable= 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    sget-object v3, Lcom/aadhk/restpos/b/t;->a:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 369
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    new-instance v3, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 373
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setId(I)V

    .line 374
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 376
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 377
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintType(I)V

    .line 378
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 379
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommTitleSize(Ljava/lang/String;)V

    .line 381
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 382
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 383
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 384
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 385
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 386
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_1
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTipGuide(Z)V

    .line 387
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_2
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 388
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 389
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 390
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 391
    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 392
    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 393
    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrinterName(Ljava/lang/String;)V

    .line 394
    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 395
    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    .line 396
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setBtName(Ljava/lang/String;)V

    .line 397
    const/16 v0, 0x18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 398
    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 399
    const/16 v0, 0x1a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 400
    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 401
    const/16 v0, 0x1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    :goto_3
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 403
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 407
    return-object v11

    :cond_2
    move v0, v1

    .line 385
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 386
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 387
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 401
    goto :goto_3
.end method

.method public final d(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 5
    .parameter

    .prologue
    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    const-string v1, "connType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "printType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v1, "paperWidth"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v1, "commInitial"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "commTitleSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommTitleSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "commCut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "commDrawer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "commBeep"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "printNum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    const-string v1, "enableTipGuide"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTipGuide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 172
    const-string v1, "enableBeep"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 173
    const-string v1, "printSeparate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 175
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "header"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "footer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "fontSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v1, "model"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "printerName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrinterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "marginTop"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v1, "marginBottom"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string v1, "marginLeft"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v1, "marginRight"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    iget-object v1, p0, Lcom/aadhk/restpos/b/t;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    return-void
.end method
