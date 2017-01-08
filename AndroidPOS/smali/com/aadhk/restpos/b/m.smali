.class public final Lcom/aadhk/restpos/b/m;
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
    iput-object p1, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
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
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid as _id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "miniQty"

    aput-object v1, v3, v0

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "rest_modifier_group"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "name asc "

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 112
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :cond_0
    new-instance v12, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-direct {v12}, Lcom/aadhk/restpos/bean/ModifierGroup;-><init>()V

    .line 117
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->setId(J)V

    .line 118
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->setName(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->setMiniQty(I)V

    .line 122
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "rest_modifier"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rowid as _id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "groupId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "price"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cost"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "qty"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "required"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "groupId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    :cond_1
    new-instance v2, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    .line 128
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setId(J)V

    .line 129
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setGroupId(J)V

    .line 130
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    .line 132
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setCost(D)V

    .line 133
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    .line 134
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 135
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setRequired(Z)V

    .line 136
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-virtual {v12, v13}, Lcom/aadhk/restpos/bean/ModifierGroup;->setModifiers(Ljava/util/List;)V

    .line 141
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 145
    return-object v10

    .line 135
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_modifier_group"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_modifier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "groupId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/ModifierGroup;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Modifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 83
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 86
    const-string v0, "rowid"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_modifier_group"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "rest_modifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "groupId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    .line 91
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 92
    const-string v5, "groupId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v5, "name"

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v5, "price"

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 95
    const-string v5, "cost"

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getCost()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 96
    const-string v5, "type"

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v5, "qty"

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getQty()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v5, "required"

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->isRequired()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "rest_modifier"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 101
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 149
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_modifier_group"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "rowid"

    aput-object v5, v3, v1

    const-string v5, "name"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    return-object v10
.end method
