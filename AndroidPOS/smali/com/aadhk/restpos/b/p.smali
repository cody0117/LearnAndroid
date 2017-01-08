.class public final Lcom/aadhk/restpos/b/p;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const-string v0, "select a.rowid, categoryName, itemName, itemId, a.price, a.cost, a.qty, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id, tax3Id,discountAmt, discountName, billId from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? "

    .line 223
    const-string v2, "select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price,cost from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc"

    .line 225
    if-eqz p3, :cond_0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    :cond_1
    new-instance v3, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    .line 233
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setId(J)V

    .line 234
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    .line 235
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    .line 237
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 238
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemCost(D)V

    .line 239
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 240
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setRemark(Ljava/lang/String;)V

    .line 241
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setCancelReason(Ljava/lang/String;)V

    .line 242
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 243
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    .line 244
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 245
    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setTax1Id(I)V

    .line 246
    const/16 v4, 0xd

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setTax2Id(I)V

    .line 247
    const/16 v4, 0xe

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setTax3Id(I)V

    .line 248
    const/16 v4, 0xf

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountAmt(D)V

    .line 249
    const/16 v4, 0x10

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountName(Ljava/lang/String;)V

    .line 250
    const/16 v4, 0x11

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setBillId(J)V

    .line 251
    invoke-virtual {v3, p1, p2}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderId(J)V

    .line 253
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v5, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 259
    :cond_2
    new-instance v6, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 260
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setId(J)V

    .line 261
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderid(J)V

    .line 262
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setItemid(J)V

    .line 263
    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderItemId(J)V

    .line 264
    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 265
    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierName(Ljava/lang/String;)V

    .line 266
    const/4 v7, 0x6

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderModifier;->setType(I)V

    .line 267
    const/4 v7, 0x7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierPrice(D)V

    .line 268
    const/16 v7, 0x8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierCost(D)V

    .line 269
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 273
    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderModifiers(Ljava/util/List;)V

    .line 274
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    return-object v1
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const-string v0, "order by orderTime asc, a.rowid"

    invoke-direct {p0, p1, p2, v0}, Lcom/aadhk/restpos/b/p;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    const-string v1, "orderid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    move-object v2, v0

    .line 31
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 32
    const-string v4, "orderId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    const-string v4, "categoryName"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "itemId"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    const-string v4, "itemName"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, "qty"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v4, "price"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 38
    const-string v4, "cost"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemCost()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 39
    const-string v4, "remark"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v4, "ordertime"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v4, "status"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v4, "discountAmt"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 43
    const-string v4, "discountName"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v4, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "rest_order_item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 46
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UPDATE rest_item_qty SET qty= ( MAX(0, qty-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")) WHERE itemId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 50
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 51
    const-string v8, "orderId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v8, "itemId"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v8, "orderItemId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v8, "qty"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v8, "modifierName"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v8, "type"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v8, "price"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 58
    const-string v8, "cost"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierCost()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 59
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "rest_order_modifier"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 62
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE rest_order SET orderCount="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " WHERE rowid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 67
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 6
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    const-string v1, "cancelReason"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public final a(JZ)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 282
    .line 283
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "a.rowid"

    aput-object v0, v3, v1

    .line 284
    const-string v2, "rest_order_item a, rest_item b,  rest_category c, rest_order d "

    .line 285
    if-eqz p3, :cond_1

    .line 288
    cmp-long v0, p1, v6

    if-lez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and b.rowid="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 303
    if-lez v2, :cond_3

    .line 306
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 307
    return v1

    .line 291
    :cond_0
    const-string v4, "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0"

    goto :goto_0

    .line 294
    :cond_1
    cmp-long v0, p1, v6

    if-lez v0, :cond_2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and b.categoryId="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 297
    :cond_2
    const-string v4, "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0"

    goto :goto_0

    :cond_3
    move v1, v10

    goto :goto_1
.end method

.method public final b(J)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "order by status asc, itemName"

    invoke-direct {p0, p1, p2, v0}, Lcom/aadhk/restpos/b/p;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJ)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    const-string v0, "select a.rowid, a.billId, a.itemName, a.price, a.cost, a.qty, tax1Id, tax2Id,tax3Id from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? and (billId=? or billId=0) and status!=1 order by a.itemName asc"

    .line 166
    const-string v2, "select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price,cost from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc"

    .line 168
    iget-object v3, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_0
    new-instance v4, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    .line 173
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setId(J)V

    .line 174
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setSelected(Z)V

    .line 175
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 177
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setItemCost(D)V

    .line 178
    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 179
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setTax1Id(I)V

    .line 180
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setTax2Id(I)V

    .line 181
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setTax3Id(I)V

    .line 182
    invoke-virtual {v4, p1, p2}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderId(J)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v5, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 187
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    :cond_1
    new-instance v6, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 191
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setId(J)V

    .line 192
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderid(J)V

    .line 193
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setItemid(J)V

    .line 194
    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderItemId(J)V

    .line 195
    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 196
    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierName(Ljava/lang/String;)V

    .line 197
    const/4 v7, 0x6

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderModifier;->setType(I)V

    .line 198
    const/4 v7, 0x7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierPrice(D)V

    .line 199
    const/16 v7, 0x8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierCost(D)V

    .line 200
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 203
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 204
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderModifiers(Ljava/util/List;)V

    .line 205
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 209
    return-object v1

    .line 174
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 6
    .parameter

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 86
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderQty()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    const-string v1, "cancelReason"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE rest_item_qty SET qty= ( MAX(0, qty+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderQty()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")) WHERE itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 118
    return-void

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    const-string v1, "qty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v2

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderQty()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v1, "categoryName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "itemId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v1, "itemName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "qty"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v1, "price"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 104
    const-string v1, "cost"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemCost()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 105
    const-string v1, "remark"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "ordertime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "discountAmt"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 109
    const-string v1, "discountName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "cancelReason"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getCancelReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_item"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final c(Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 6
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 123
    const-string v1, "price"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 125
    iget-object v1, p0, Lcom/aadhk/restpos/b/p;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_item"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method
