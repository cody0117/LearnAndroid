.class public final Lcom/aadhk/restpos/b/j;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/b/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select supplementName, sum(qty) as totalCount, sum(supp.price*qty) as totalAmount, supp.type from rest_order as sale, rest_orderitem as item, rest_orderSupplement as supp where sale.rowid=item.orderId and sale.status=1 and item.rowid=supp.orderItemId and sale.endtime between \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' group by supplementName order by totalAmount desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/aadhk/restpos/b/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    const-wide/16 v0, 0x0

    .line 156
    const/4 v2, 0x0

    .line 158
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 160
    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 161
    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 163
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 164
    const-wide/high16 v9, -0x4010

    mul-double/2addr v3, v9

    .line 167
    :cond_1
    new-instance v9, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 168
    invoke-virtual {v9, v7}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v9, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 170
    invoke-virtual {v9, v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 171
    add-double/2addr v0, v3

    .line 172
    add-int/2addr v2, v8

    .line 174
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    if-lez v2, :cond_2

    .line 178
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0901af

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 181
    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 182
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    return-object v5
.end method

.method public final a(Ljava/lang/String;IIZDDI)Ljava/util/List;
    .locals 14
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
            "IIZDDI)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .line 102
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/aadhk/restpos/b/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "rest_modifierGroup"

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

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    :cond_0
    new-instance v13, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-direct {v13}, Lcom/aadhk/restpos/bean/ModifierGroup;-><init>()V

    .line 111
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 112
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->setName(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/aadhk/restpos/b/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "rest_modifier"

    const/4 v4, 0x6

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

    const-string v8, "type"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    const-string v8, "qty"

    aput-object v8, v4, v7

    const/4 v7, 0x5

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

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :cond_1
    new-instance v9, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    .line 119
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/aadhk/restpos/bean/Modifier;->setId(J)V

    .line 120
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 122
    if-eqz p4, :cond_3

    .line 123
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 124
    const/4 v6, 0x0

    move-wide/from16 v3, p5

    move/from16 v5, p9

    invoke-static/range {v1 .. v6}, Lcom/aadhk/restpos/f/h;->a(DDIZ)D

    move-result-wide v1

    .line 126
    :cond_2
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 127
    const/4 v6, 0x0

    move-wide/from16 v3, p7

    move/from16 v5, p9

    invoke-static/range {v1 .. v6}, Lcom/aadhk/restpos/f/h;->a(DDIZ)D

    move-result-wide v1

    .line 130
    :cond_3
    invoke-virtual {v9, v1, v2}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    .line 132
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    .line 133
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 134
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v9, v1}, Lcom/aadhk/restpos/bean/Modifier;->setRequired(Z)V

    .line 135
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v13, v8}, Lcom/aadhk/restpos/bean/ModifierGroup;->setModifiers(Ljava/util/List;)V

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 145
    return-object v11

    .line 134
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/b/j;->a:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 59
    return-void
.end method

.method public final b(J)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Modifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid as _id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "price"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "qty"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "required"

    aput-object v1, v3, v0

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/b/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "rest_modifier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "groupId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, " type asc ,name asc "

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/Modifier;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Modifier;-><init>()V

    .line 87
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setId(J)V

    .line 88
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setName(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Modifier;->setPrice(D)V

    .line 90
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setType(I)V

    .line 91
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setQty(I)V

    .line 92
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Modifier;->setRequired(Z)V

    .line 93
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    return-object v10

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
