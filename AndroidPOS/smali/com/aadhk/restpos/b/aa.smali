.class public final Lcom/aadhk/restpos/b/aa;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_table_group"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_table_group"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tableGroupId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_table"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tableGroupId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/TableGroup;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/TableGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_table_group"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 38
    return-void
.end method

.method public final a(I)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 89
    .line 90
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "tableGroupId"

    aput-object v0, v3, v1

    .line 91
    const-string v4, "isOpen=1"

    .line 92
    if-lez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and tableGroupId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_table"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    return v1

    :cond_1
    move v1, v10

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const-string v1, "select tableGroupId, name  from rest_table_group"

    .line 74
    iget-object v2, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/TableGroup;-><init>()V

    .line 79
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/TableGroup;->setTableGroupId(I)V

    .line 80
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/TableGroup;->setName(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 85
    return-object v0
.end method

.method public final b(Lcom/aadhk/restpos/bean/TableGroup;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/TableGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/aadhk/restpos/b/aa;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_table_group"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tableGroupId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/TableGroup;->getTableGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method
