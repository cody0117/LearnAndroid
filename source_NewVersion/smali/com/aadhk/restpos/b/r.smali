.class public final Lcom/aadhk/restpos/b/r;
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
    const/16 v0, 0x1d

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

    const-string v2, "marginTop"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "marginBottom"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "marginLeft"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "marginRight"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "enableBeep"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "showCancelItem"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/r;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 170
    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    sget-object v3, Lcom/aadhk/restpos/b/r;->a:[Ljava/lang/String;

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

    .line 173
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v5, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 175
    invoke-virtual {v5, p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setId(I)V

    .line 176
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 178
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 179
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintType(I)V

    .line 180
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 181
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommTitleSize(Ljava/lang/String;)V

    .line 183
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 184
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 185
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 186
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 187
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 188
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTip(Z)V

    .line 189
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_2
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 190
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 191
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 192
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 193
    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 194
    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 195
    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setName(Ljava/lang/String;)V

    .line 196
    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 197
    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    .line 198
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 199
    const/16 v0, 0x18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 200
    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 201
    const/16 v0, 0x1a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 202
    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v5, v10}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 205
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 206
    return-object v5

    :cond_1
    move v0, v1

    .line 187
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 188
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 189
    goto/16 :goto_2

    :cond_4
    move v10, v1

    .line 202
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

    .line 250
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 254
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 260
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
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTip()Z

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

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getName()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

.method public final b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 277
    .line 279
    const-string v4, "printType=1"

    .line 280
    if-eq p1, v11, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and enable= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    sget-object v3, Lcom/aadhk/restpos/b/r;->a:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 285
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    new-instance v5, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 287
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setId(I)V

    .line 288
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 289
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 290
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 291
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintType(I)V

    .line 292
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 293
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommTitleSize(Ljava/lang/String;)V

    .line 295
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 296
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 297
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 298
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 299
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 300
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_1
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTip(Z)V

    .line 301
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_2
    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 302
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 303
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 304
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 305
    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 306
    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 307
    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setName(Ljava/lang/String;)V

    .line 308
    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 309
    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    .line 310
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 311
    const/16 v0, 0x18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 312
    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 313
    const/16 v0, 0x1a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 314
    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v5, v10}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 317
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    return-object v5

    :cond_2
    move v0, v1

    .line 299
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 300
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 301
    goto/16 :goto_2

    :cond_5
    move v10, v1

    .line 314
    goto :goto_3
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

    .line 264
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
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

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTip()Z

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

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getName()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

.method public final c()Ljava/util/List;
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

    .line 322
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 324
    const-string v0, " printType=2"

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and enable= 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_printer"

    sget-object v3, Lcom/aadhk/restpos/b/r;->a:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 338
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    new-instance v3, Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;-><init>()V

    .line 342
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setId(I)V

    .line 343
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setIp(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPort(I)V

    .line 345
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 346
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintType(I)V

    .line 347
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPaperWidth(I)V

    .line 348
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommInitial(Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommTitleSize(Ljava/lang/String;)V

    .line 350
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommCut(Ljava/lang/String;)V

    .line 351
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommDrawer(Ljava/lang/String;)V

    .line 352
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setCommBeep(Ljava/lang/String;)V

    .line 353
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintNum(I)V

    .line 354
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnable(Z)V

    .line 355
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_1
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableTip(Z)V

    .line 356
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_2
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setPrintSeparate(Z)V

    .line 357
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 358
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHeader(Ljava/lang/String;)V

    .line 359
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFooter(Ljava/lang/String;)V

    .line 360
    const/16 v0, 0x12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setFontSize(I)V

    .line 361
    const/16 v0, 0x13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setModel(Ljava/lang/String;)V

    .line 362
    const/16 v0, 0x14

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setName(Ljava/lang/String;)V

    .line 363
    const/16 v0, 0x15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setHostingIp(Ljava/lang/String;)V

    .line 364
    const/16 v0, 0x16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    .line 365
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginTop(I)V

    .line 366
    const/16 v0, 0x18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginBottom(I)V

    .line 367
    const/16 v0, 0x19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginLeft(I)V

    .line 368
    const/16 v0, 0x1a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setMarginRight(I)V

    .line 369
    const/16 v0, 0x1b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    :goto_3
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setEnableBeep(Z)V

    .line 371
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 375
    return-object v11

    :cond_2
    move v0, v1

    .line 354
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 355
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 356
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 369
    goto :goto_3
.end method

.method public final c(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 5
    .parameter

    .prologue
    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    const-string v1, "connType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v1, "printType"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v1, "paperWidth"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPaperWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v1, "commInitial"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommInitial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "commTitleSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommTitleSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "commCut"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommCut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "commDrawer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommDrawer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "commBeep"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getCommBeep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "printNum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getPrintNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v1, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 147
    const-string v1, "enableTipGuide"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableTip()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    const-string v1, "enableBeep"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnableBeep()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    const-string v1, "printSeparate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isPrintSeparate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    const-string v1, "logoName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "header"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "footer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "fontSize"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "model"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "printerName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "marginTop"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "marginBottom"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "marginLeft"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v1, "marginRight"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getMarginRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 163
    return-void
.end method
