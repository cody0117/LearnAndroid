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
    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orderid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "amount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "paidAmt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "changeAmt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "paymentTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "paymentMethodName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "paymentMethodType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cashierName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/o;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderPayment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/b/o;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_order_payment"

    sget-object v3, Lcom/aadhk/restpos/b/o;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "orderId="

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

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/OrderPayment;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/OrderPayment;-><init>()V

    .line 44
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setOrderId(J)V

    .line 45
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setAmount(D)V

    .line 46
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaid(D)V

    .line 47
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/OrderPayment;->setChangeAmt(D)V

    .line 48
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentTime(Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodName(Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setPaymentMethodType(I)V

    .line 51
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/OrderPayment;->setCashierName(Ljava/lang/String;)V

    .line 52
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 56
    return-object v10
.end method
