.class public final Lcom/aadhk/restpos/b/o;
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
    .line 19
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ordertime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tableid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tableName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "customerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "customerName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "personnum"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "splitType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orderNum"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "receiptNote"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "discountReason"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "remark"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "orderCount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "waiterName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/o;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Order;Ljava/lang/String;)J
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-virtual/range {p2 .. p2}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 395
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_6

    .line 397
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 398
    const-string v2, "isOpen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 399
    iget-object v2, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "rest_table"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 401
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 402
    const-string v2, "ordertime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "tableid"

    invoke-virtual/range {p2 .. p2}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string v2, "personnum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v2, "orderNum"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "status"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v2, "tableName"

    invoke-virtual/range {p2 .. p2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "remark"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getKitchenRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 411
    const-string v2, "customerId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getCustomerId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const-string v2, "customerName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getCustomerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "rest_order"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    move-wide v3, v1

    .line 422
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "update rest_order set status= 4, endtime=\'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\', cancelReason=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', cancelPerson=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' where rowid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update rest_table set isOpen= 0 where rowid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    const-string v2, "select a.rowid, categoryName, itemName, itemId, a.price, a.qty, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id,tax3Id, discountAmt, discountName, billId from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? order by status asc, itemName"

    .line 434
    const-string v5, "select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc"

    .line 435
    iget-object v6, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 436
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 439
    :cond_1
    new-instance v6, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    .line 440
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setId(J)V

    .line 441
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    .line 442
    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    .line 443
    const/4 v7, 0x3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    .line 444
    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 445
    const/4 v7, 0x5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 446
    const/4 v7, 0x6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setRemark(Ljava/lang/String;)V

    .line 447
    const/4 v7, 0x7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setCancelReason(Ljava/lang/String;)V

    .line 448
    const/16 v7, 0x8

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 449
    const/16 v7, 0x9

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    .line 450
    const/16 v7, 0xa

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 451
    const/16 v7, 0xb

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setTax1Id(I)V

    .line 452
    const/16 v7, 0xc

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setTax2Id(I)V

    .line 453
    const/16 v7, 0xd

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setTax3Id(I)V

    .line 454
    const/16 v7, 0xe

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountAmt(D)V

    .line 455
    const/16 v7, 0xf

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountName(Ljava/lang/String;)V

    .line 456
    const/16 v7, 0x10

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setBillId(J)V

    .line 457
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderId(J)V

    .line 459
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 460
    iget-object v8, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 462
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 465
    :cond_2
    new-instance v9, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 466
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/aadhk/restpos/bean/OrderModifier;->setId(J)V

    .line 467
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderid(J)V

    .line 468
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/aadhk/restpos/bean/OrderModifier;->setItemid(J)V

    .line 469
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderItemId(J)V

    .line 470
    const/4 v10, 0x4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 471
    const/4 v10, 0x5

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierName(Ljava/lang/String;)V

    .line 472
    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/aadhk/restpos/bean/OrderModifier;->setType(I)V

    .line 473
    const/4 v10, 0x7

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierPrice(D)V

    .line 474
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 477
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 478
    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderModifiers(Ljava/util/List;)V

    .line 479
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 482
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 484
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    move-object v2, v0

    .line 485
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 486
    const-string v6, "orderId"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 487
    const-string v6, "categoryName"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getCategoryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v6, "itemId"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    const-string v6, "itemName"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v6, "qty"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string v6, "price"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 492
    const-string v6, "cost"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemCost()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 493
    const-string v6, "remark"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v6, "ordertime"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getStartTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v6, "status"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v6, "discountAmt"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 497
    const-string v6, "discountName"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v6, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "rest_order_item"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 502
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 503
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 504
    const-string v10, "orderId"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    const-string v10, "itemId"

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/OrderItem;->getItemId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    const-string v10, "orderItemId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 507
    const-string v10, "qty"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const-string v10, "modifierName"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v10, "type"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v10, "price"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 511
    const-string v10, "cost"

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierCost()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 512
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "rest_order_modifier"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 517
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 417
    :cond_6
    :try_start_1
    const-string v3, "update rest_order set personnum= personnum+(select personnum from rest_order where rowid=?) where rowid=?"

    .line 418
    iget-object v4, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v3, v1

    goto/16 :goto_0

    .line 515
    :cond_7
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 519
    return-wide v3
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select rowid, tablename from rest_order where (status!=1 and status!=2 and status!=4 and tableId>0)  and tableName !=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' order by tableName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 305
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 309
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    .line 310
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 315
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select rowid, ordertime, endtime, tableid, tablename, personnum, status, cancelReason, subTotal, discountAmt, serviceAmt, gratuity, tax1Amt, tax2Amt, tax3Amt, tax1Name, tax2Name,tax3Name, amount, orderNum, receiptNote, discountReason, splitType , cashierName, customerId, customerName,remark from rest_order where endtime>=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and endtime<=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and (status=1 or status=2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "select * from rest_order_item where  status=1 and orderId=?"

    .line 322
    iget-object v3, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    :cond_0
    new-instance v3, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 328
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    .line 329
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 330
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setEndTime(Ljava/lang/String;)V

    .line 331
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 332
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 334
    const/4 v4, 0x6

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setStatus(I)V

    .line 335
    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setCancelReason(Ljava/lang/String;)V

    .line 336
    const/16 v4, 0x8

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setSubTotal(D)V

    .line 337
    const/16 v4, 0x9

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setDiscountAmt(D)V

    .line 338
    const/16 v4, 0xa

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 339
    const/16 v4, 0xb

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setGratuity(D)V

    .line 340
    const/16 v4, 0xc

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setTax1Amt(D)V

    .line 341
    const/16 v4, 0xd

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setTax2Amt(D)V

    .line 342
    const/16 v4, 0xe

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setTax3Amt(D)V

    .line 343
    const/16 v4, 0xf

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax1Name(Ljava/lang/String;)V

    .line 344
    const/16 v4, 0x10

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax2Name(Ljava/lang/String;)V

    .line 345
    const/16 v4, 0x11

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTax3Name(Ljava/lang/String;)V

    .line 346
    const/16 v4, 0x12

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    .line 347
    const/16 v4, 0x13

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 348
    const/16 v4, 0x14

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setReceiptNote(Ljava/lang/String;)V

    .line 349
    const/16 v4, 0x15

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setDiscountReason(Ljava/lang/String;)V

    .line 350
    const/16 v4, 0x16

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 351
    const/16 v4, 0x17

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setCashierName(Ljava/lang/String;)V

    .line 352
    const/16 v4, 0x18

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/Order;->setCustomerId(J)V

    .line 353
    const/16 v4, 0x19

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setCustomerName(Ljava/lang/String;)V

    .line 354
    const/16 v4, 0x1a

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/Order;->setKitchenRemark(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 356
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 357
    invoke-virtual {v3, v9}, Lcom/aadhk/restpos/bean/Order;->setHasVoidItem(Z)V

    .line 359
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 361
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 365
    return-object v0
.end method

.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_order"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_order_item"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_order_modifier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_order_payment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_split_bill"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 47
    return-void
.end method

.method public final a(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 28
    const-string v1, "personnum"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    const-string v1, "remark"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public final b(J)Lcom/aadhk/restpos/bean/Order;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 85
    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order"

    sget-object v3, Lcom/aadhk/restpos/b/o;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "status!=1 and status!=2 and status!=4 and tableId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    new-instance v5, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 89
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    .line 90
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5, p1, p2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 92
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setCustomerId(J)V

    .line 94
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setCustomerName(Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 96
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setStatus(I)V

    .line 97
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 98
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 99
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setReceiptNote(Ljava/lang/String;)V

    .line 100
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setDiscountReason(Ljava/lang/String;)V

    .line 101
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setKitchenRemark(Ljava/lang/String;)V

    .line 102
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderCount(I)V

    .line 103
    const/16 v1, 0xe

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    return-object v5
.end method

.method public final c(J)Lcom/aadhk/restpos/bean/Order;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 139
    .line 141
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "rest_order"

    sget-object v3, Lcom/aadhk/restpos/b/o;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " rowid="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v5, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 144
    invoke-virtual {v5, p1, p2}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    .line 145
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 147
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setCustomerId(J)V

    .line 149
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setCustomerName(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 151
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setStatus(I)V

    .line 152
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 153
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 154
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setReceiptNote(Ljava/lang/String;)V

    .line 155
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setDiscountReason(Ljava/lang/String;)V

    .line 156
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Order;->setKitchenRemark(Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    return-object v5
.end method

.method public final d(J)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 176
    .line 177
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v3, v1

    .line 178
    const-string v4, "isOpen=1"

    .line 179
    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-lez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and rowid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_table"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 187
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    return v1

    :cond_1
    move v1, v10

    goto :goto_0
.end method

.method public final e(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, ""

    .line 194
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b.itemid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select a.rowid  from rest_order as a left join rest_order_item as b on a.rowid=b.orderid where "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (a.status!=2 and a.status!=1 and a.status!=4 and b.status!=1) group by a.rowid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 203
    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/aadhk/restpos/b/o;->f(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    :cond_2
    return-object v1
.end method

.method public final f(J)Ljava/util/List;
    .locals 27
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const-string v3, ""

    .line 212
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "a.rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    :cond_0
    const-string v5, "select type, price, qty from rest_order_modifier where orderid=?"

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "select a.rowid,  sum(b.price*b.qty) as amount, a.ordertime, a.tableName, a.tableId, a.status, splitType, a.orderNum, a.personnum, a.customerId, a.customerName from rest_order as a left join rest_order_item as b on a.rowid=b.orderid where "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (a.status!=2 and a.status!=1 and a.status!=4 and b.status!=1) group by a.rowid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 223
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 224
    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 225
    const/4 v10, 0x2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 226
    const/4 v11, 0x3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 227
    const/4 v12, 0x4

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 228
    const/4 v14, 0x5

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 229
    const/4 v15, 0x6

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getShort(I)S

    move-result v15

    .line 230
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 231
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 232
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 233
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 236
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 238
    :cond_2
    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 239
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v23

    .line 240
    const/16 v25, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 242
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 243
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v22, v23, v25

    add-double v3, v3, v22

    .line 247
    :goto_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_2

    .line 249
    :cond_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 251
    new-instance v21, Lcom/aadhk/restpos/bean/Order;

    invoke-direct/range {v21 .. v21}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 252
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    .line 253
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setAmount(D)V

    .line 254
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 257
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/aadhk/restpos/bean/Order;->setStatus(I)V

    .line 258
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/aadhk/restpos/bean/Order;->setSplitType(S)V

    .line 259
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 261
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setCustomerId(J)V

    .line 262
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setCustomerName(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 267
    return-object v6

    .line 245
    :cond_5
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v22, v23, v25

    sub-double v3, v3, v22

    goto :goto_0
.end method

.method public final g(J)V
    .locals 5
    .parameter

    .prologue
    .line 383
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 384
    const-string v1, "status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    iget-object v1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    return-void
.end method
