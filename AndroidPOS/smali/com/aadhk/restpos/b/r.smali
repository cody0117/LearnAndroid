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
    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rounding"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "openDrawer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "beDefault"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/r;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 91
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_payment_method"

    sget-object v3, Lcom/aadhk/restpos/b/r;->a:[Ljava/lang/String;

    const-string v8, "rowid asc"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    new-instance v3, Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/PaymentMethod;-><init>()V

    .line 98
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->setId(I)V

    .line 99
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->setName(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->setType(I)V

    .line 101
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->setRounding(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->setOpenDrawer(Z)V

    .line 103
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_3

    move v0, v10

    :goto_1
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PaymentMethod;->setBeDefault(Z)V

    .line 104
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 108
    return-object v11

    :cond_2
    move v0, v1

    .line 102
    goto :goto_0

    :cond_3
    move v0, v1

    .line 103
    goto :goto_1
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_payment_method"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const-string v1, "rounding"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getRounding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "openDrawer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isOpenDrawer()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 40
    const-string v1, "beDefault"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_payment_method"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 42
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 5
    .parameter

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "rounding"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getRounding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "openDrawer"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isOpenDrawer()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string v1, "beDefault"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_payment_method"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->isBeDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    const-string v1, "beDefault"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_payment_method"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid!="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PaymentMethod;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/r;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method