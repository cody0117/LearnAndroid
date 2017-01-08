.class public final Lcom/aadhk/restpos/b/x;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/aadhk/restpos/b/x;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 43
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/b/x;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_service_fee"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "rowid as _id"

    aput-object v5, v3, v1

    const-string v5, "name"

    aput-object v5, v3, v10

    const-string v5, "isPercentage"

    aput-object v5, v3, v12

    const-string v5, "amount"

    aput-object v5, v3, v13

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    new-instance v3, Lcom/aadhk/restpos/bean/ServiceFee;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ServiceFee;-><init>()V

    .line 49
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/ServiceFee;->setId(I)V

    .line 50
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/ServiceFee;->setName(Ljava/lang/String;)V

    .line 51
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/ServiceFee;->setPercentage(Z)V

    .line 52
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ServiceFee;->setAmount(D)V

    .line 53
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 57
    return-object v11

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/b/x;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_service_fee"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/ServiceFee;)V
    .locals 4
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 22
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "isPercentage"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    const-string v1, "amount"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 25
    iget-object v1, p0, Lcom/aadhk/restpos/b/x;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_service_fee"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 26
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/ServiceFee;)V
    .locals 5
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "isPercentage"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->isPercentage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    const-string v1, "amount"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 39
    iget-object v1, p0, Lcom/aadhk/restpos/b/x;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_service_fee"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ServiceFee;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    return-void
.end method
