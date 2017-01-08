.class public final Lcom/aadhk/restpos/b/j;
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
    .line 18
    const/4 v0, 0x5

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

    const-string v2, "remark"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/j;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aadhk/restpos/b/j;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 28
    const-string v11, "select a.rowid, categoryName, itemName, itemId, a.price, a.qty, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id, discountAmt, discountName, billId from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? order by orderTime asc"

    .line 29
    const-string v12, "select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc"

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/b/j;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "rest_order"

    sget-object v3, Lcom/aadhk/restpos/b/j;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    :cond_0
    new-instance v1, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setId(J)V

    .line 39
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 41
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 42
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/Order;->setKitchenRemark(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/aadhk/restpos/b/j;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 44
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    :cond_1
    new-instance v4, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/OrderItem;-><init>()V

    .line 48
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setId(J)V

    .line 49
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setCategoryName(Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setItemName(Ljava/lang/String;)V

    .line 51
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setItemId(J)V

    .line 52
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setItemPrice(D)V

    .line 53
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setQty(I)V

    .line 54
    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setRemark(Ljava/lang/String;)V

    .line 55
    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setCancelReason(Ljava/lang/String;)V

    .line 56
    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setStatus(I)V

    .line 57
    const/16 v5, 0x9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setPrinterId(I)V

    .line 58
    const/16 v5, 0xa

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setStartTime(Ljava/lang/String;)V

    .line 59
    const/16 v5, 0xb

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setTax1Id(I)V

    .line 60
    const/16 v5, 0xc

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setTax2Id(I)V

    .line 61
    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountAmt(D)V

    .line 62
    const/16 v5, 0xe

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setDiscountName(Ljava/lang/String;)V

    .line 63
    const/16 v5, 0xf

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setBillId(J)V

    .line 64
    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderId(J)V

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v6, p0, Lcom/aadhk/restpos/b/j;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/OrderItem;->getId()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    :cond_2
    new-instance v7, Lcom/aadhk/restpos/bean/OrderModifier;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/OrderModifier;-><init>()V

    .line 73
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/OrderModifier;->setId(J)V

    .line 74
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderid(J)V

    .line 75
    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/OrderModifier;->setItemid(J)V

    .line 76
    const/4 v8, 0x3

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/OrderModifier;->setOrderItemId(J)V

    .line 77
    const/4 v8, 0x4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setQty(I)V

    .line 78
    const/4 v8, 0x5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierName(Ljava/lang/String;)V

    .line 79
    const/4 v8, 0x6

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/OrderModifier;->setType(I)V

    .line 80
    const/4 v8, 0x7

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/OrderModifier;->setModifierPrice(D)V

    .line 81
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/OrderItem;->setOrderModifiers(Ljava/util/List;)V

    .line 86
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_4
    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderItems(Ljava/util/List;)V

    .line 91
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    return-object v10
.end method
