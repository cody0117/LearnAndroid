.class public final Lcom/aadhk/restpos/b/l;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/aadhk/restpos/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIIZDDDI)Ljava/util/List;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZDDDI)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .line 98
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/aadhk/restpos/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "rest_modifier_group"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rowid as _id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, " name asc "

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 102
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    :cond_0
    new-instance v13, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-direct {v13}, Lcom/aadhk/restpos/bean/ModifierGroup;-><init>()V

    .line 107
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 108
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->setName(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/aadhk/restpos/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "rest_modifier"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rowid as _id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "price"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "cost"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    const-string v8, "type"

    aput-object v8, v4, v7

    const/4 v7, 0x5

    const-string v8, "qty"

    aput-object v8, v4, v7

    const/4 v7, 0x6

    const-string v8, "required"

    aput-object v8, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "groupId = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, " type asc ,name asc "

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :cond_1
    new-instance v9, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    .line 115
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/aadhk/restpos/bean/Modifier;->setId(J)V

    .line 116
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 118
    if-eqz p5, :cond_4

    .line 119
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 120
    const/4 v6, 0x0

    move-wide/from16 v3, p6

    move/from16 v5, p12

    invoke-static/range {v1 .. v6}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v1

    .line 122
    :cond_2
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 123
    const/4 v6, 0x0

    move-wide/from16 v3, p8

    move/from16 v5, p12

    invoke-static/range {v1 .. v6}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v1

    .line 125
    :cond_3
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    .line 126
    const/4 v6, 0x0

    move-wide/from16 v3, p10

    move/from16 v5, p12

    invoke-static/range {v1 .. v6}, Lcom/aadhk/restpos/util/m;->a(DDIZ)D

    move-result-wide v1

    .line 129
    :cond_4
    invoke-virtual {v9, v1, v2}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    .line 130
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/aadhk/restpos/bean/Modifier;->setCost(D)V

    .line 131
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    .line 132
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 133
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setRequired(Z)V

    .line 134
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v13, v8}, Lcom/aadhk/restpos/bean/ModifierGroup;->setModifiers(Ljava/util/List;)V

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 144
    return-object v11

    .line 133
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_modifier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    return-void
.end method
