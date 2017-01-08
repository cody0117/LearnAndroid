.class public final Lcom/aadhk/restpos/b/b;
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
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sequence"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_category"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_item"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_item"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "categoryid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_category"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Category;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "sequence"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Category;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_category"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 42
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    .line 29
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/b/b;->a(Lcom/aadhk/restpos/bean/Category;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 31
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 34
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
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 101
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 102
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

    .line 103
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 104
    const-string v4, "sequence"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "rest_category"

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

    .line 109
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 114
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_category"

    sget-object v3, Lcom/aadhk/restpos/b/b;->a:[Ljava/lang/String;

    const-string v8, "sequence desc"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Category;-><init>()V

    .line 121
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Category;->setId(J)V

    .line 122
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Category;->setSequence(I)V

    .line 124
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    return-object v10
.end method

.method public final b(Lcom/aadhk/restpos/bean/Category;)V
    .locals 6
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "sequence"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Category;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_category"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public final b(J)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 70
    .line 71
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "a.rowid"

    aput-object v0, v3, v1

    .line 72
    const-string v2, "rest_order_item a, rest_item b,  rest_category c, rest_order d "

    .line 73
    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-lez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and c.rowid="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 86
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    return v1

    .line 78
    :cond_0
    const-string v4, "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0"

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 132
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v11, Lcom/aadhk/restpos/b/i;

    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v11, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_category"

    sget-object v3, Lcom/aadhk/restpos/b/b;->a:[Ljava/lang/String;

    const-string v8, "sequence desc"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Category;-><init>()V

    .line 140
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Category;->setId(J)V

    .line 141
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Category;->setSequence(I)V

    .line 143
    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/aadhk/restpos/b/i;->c(J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Category;->setItemList(Ljava/util/List;)V

    .line 144
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    return-object v10
.end method
