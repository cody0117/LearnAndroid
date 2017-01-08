.class public final Lcom/aadhk/restpos/b/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(JZDDDI)Ljava/util/List;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZDDDI)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-string v0, " select rowid as _id, name, price,cost,background,fontColor, printerId, tax1Id, tax2Id, tax3Id, modifierGroupId, kitchenNoteGroupId, isWarn, warnQty,askPrice,stopSaleZeroQty from rest_item where categoryid=? order by sequence desc"

    .line 223
    const-string v6, " select qty from rest_item_qty where itemId=?"

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    :cond_0
    new-instance v9, Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/Item;-><init>()V

    .line 233
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/aadhk/restpos/bean/Item;->setId(J)V

    .line 234
    invoke-virtual {v9, p1, p2}, Lcom/aadhk/restpos/bean/Item;->setCategoryId(J)V

    .line 235
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setName(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 238
    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    .line 239
    const/4 v2, 0x7

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 240
    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 241
    const/16 v2, 0x9

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 242
    if-eqz p3, :cond_3

    .line 243
    const/4 v2, 0x1

    if-ne v10, v2, :cond_1

    .line 244
    const-wide/high16 v2, 0x4059

    add-double v2, v2, p4

    const/4 v5, 0x0

    move/from16 v4, p10

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v0

    .line 247
    :cond_1
    const/4 v2, 0x2

    if-ne v11, v2, :cond_2

    .line 248
    const-wide/high16 v2, 0x4059

    add-double v2, v2, p6

    const/4 v5, 0x0

    move/from16 v4, p10

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v0

    .line 251
    :cond_2
    const/4 v2, 0x3

    if-ne v12, v2, :cond_3

    .line 252
    const-wide/high16 v2, 0x4059

    add-double v2, v2, p8

    const/4 v5, 0x0

    move/from16 v4, p10

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v0

    .line 255
    :cond_3
    invoke-virtual {v9, v0, v1}, Lcom/aadhk/restpos/bean/Item;->setPrice(D)V

    .line 256
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/aadhk/restpos/bean/Item;->setCost(D)V

    .line 257
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v9, v10}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    .line 260
    invoke-virtual {v9, v11}, Lcom/aadhk/restpos/bean/Item;->setTax2Id(I)V

    .line 261
    invoke-virtual {v9, v12}, Lcom/aadhk/restpos/bean/Item;->setTax3Id(I)V

    .line 262
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setModifierGroupIds(Ljava/lang/String;)V

    .line 263
    const/16 v0, 0xb

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setKitchenNoteGroupIds(Ljava/lang/String;)V

    .line 264
    const/16 v0, 0xc

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setWarn(Z)V

    .line 265
    const/16 v0, 0xd

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setWarnQty(I)V

    .line 266
    const/16 v0, 0xe

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setAskPrice(Z)V

    .line 267
    const/16 v0, 0xf

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v9, v0}, Lcom/aadhk/restpos/bean/Item;->setStopSaleZeroQty(Z)V

    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    .line 273
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 279
    return-object v7

    .line 264
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 267
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_item"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_item_qty"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public final a(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    const-string v1, "printerId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "categoryid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public final a(JIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 123
    const-string v1, "tax1Id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v1, "tax2Id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v1, "tax3Id"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "categoryid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    const-string v1, "modifierGroupId"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "categoryid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Item;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 43
    const-string v1, "categoryid"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getCategoryId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "price"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 46
    const-string v1, "cost"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getCost()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 47
    const-string v1, "picture"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPicture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "background"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "fontColor"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "printerId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v1, "tax1Id"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v1, "tax2Id"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getTax2Id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v1, "tax3Id"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getTax3Id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v1, "modifierGroupId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "kitchenNoteGroupId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "isWarn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    const-string v1, "warnQty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v1, "askPrice"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isAskPrice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    const-string v1, "stopSaleZeroQty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isStopSaleZeroQty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    const-string v1, "sequence"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 64
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 65
    const-string v3, "itemId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v0, "qty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_item_qty"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 31
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/b/i;->a(Lcom/aadhk/restpos/bean/Item;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 33
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 36
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 147
    const-string v4, "sequence"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "rest_item"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 150
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    return-void
.end method

.method public final a(I)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tax1Id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tax2Id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tax3Id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    new-array v3, v10, [Ljava/lang/String;

    const-string v6, "name"

    aput-object v6, v3, v1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 214
    if-nez v2, :cond_2

    .line 217
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    return v1

    :cond_2
    move v1, v10

    goto :goto_0
.end method

.method public final b(J)V
    .locals 6
    .parameter

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select rowid from rest_item where categoryId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item_qty"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_item"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "categoryId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final b(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    const-string v1, "kitchenNoteGroupId"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "categoryid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/Item;)V
    .locals 6
    .parameter

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v1, "categoryid"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getCategoryId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "price"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 81
    const-string v1, "cost"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getCost()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 82
    const-string v1, "picture"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPicture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "background"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getBackground()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "fontColor"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getFontColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "printerId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getPrinterId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "tax1Id"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getTax1Id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "tax2Id"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getTax2Id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "tax3Id"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getTax3Id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "modifierGroupId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getModifierGroupIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "kitchenNoteGroupId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getKitchenNoteGroupIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "sequence"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "isWarn"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isWarn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    const-string v1, "warnQty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getWarnQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "askPrice"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isAskPrice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 96
    const-string v1, "stopSaleZeroQty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->isStopSaleZeroQty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    const-string v1, "qty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_item_qty"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final c(J)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 283
    const-string v0, " select rowid as _id, name as name, price,cost,background,fontColor, printerId, tax1Id, tax2Id,tax3Id, sequence, modifierGroupId, kitchenNoteGroupId, isWarn, warnQty,askPrice,stopSaleZeroQty from rest_item  where categoryid=? order by sequence desc"

    .line 284
    const-string v3, " select qty from rest_item_qty where itemId=?"

    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v5, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 289
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    :cond_0
    new-instance v6, Lcom/aadhk/restpos/bean/Item;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/Item;-><init>()V

    .line 293
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/Item;->setId(J)V

    .line 294
    invoke-virtual {v6, p1, p2}, Lcom/aadhk/restpos/bean/Item;->setCategoryId(J)V

    .line 295
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setName(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/Item;->setPrice(D)V

    .line 297
    const/4 v0, 0x3

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/Item;->setCost(D)V

    .line 298
    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setBackground(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setFontColor(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x6

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setPrinterId(I)V

    .line 301
    const/4 v0, 0x7

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setTax1Id(I)V

    .line 302
    const/16 v0, 0x8

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setTax2Id(I)V

    .line 303
    const/16 v0, 0x9

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setTax3Id(I)V

    .line 304
    const/16 v0, 0xa

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setSequence(I)V

    .line 305
    const/16 v0, 0xb

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setModifierGroupIds(Ljava/lang/String;)V

    .line 306
    const/16 v0, 0xc

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setKitchenNoteGroupIds(Ljava/lang/String;)V

    .line 307
    const/16 v0, 0xd

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setWarn(Z)V

    .line 308
    const/16 v0, 0xe

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setWarnQty(I)V

    .line 309
    const/16 v0, 0xf

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setAskPrice(Z)V

    .line 310
    const/16 v0, 0x10

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Lcom/aadhk/restpos/bean/Item;->setStopSaleZeroQty(Z)V

    .line 312
    iget-object v0, p0, Lcom/aadhk/restpos/b/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v7, v1, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/Item;->setQty(I)V

    .line 316
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 322
    return-object v4

    :cond_3
    move v0, v2

    .line 307
    goto :goto_0

    :cond_4
    move v0, v2

    .line 309
    goto :goto_1

    :cond_5
    move v0, v2

    .line 310
    goto :goto_2
.end method
