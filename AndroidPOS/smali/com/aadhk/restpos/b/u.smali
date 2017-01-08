.class public final Lcom/aadhk/restpos/b/u;
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
    iput-object p1, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v5, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 141
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select rowid, amount from rest_order where endtime>=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and endtime<=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and status=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 144
    const-string v8, "select rowid, cost*qty from rest_order_item where orderid=? and status!=1"

    .line 145
    const-string v9, "select type, total(cost*qty)  from rest_order_modifier where orderid=? and orderItemId=?"

    .line 147
    const-wide/16 v3, 0x0

    .line 148
    const-wide/16 v1, 0x0

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 150
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 152
    :cond_0
    const/4 v10, 0x1

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    add-double/2addr v3, v10

    .line 153
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 156
    :cond_1
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    add-double/2addr v1, v11

    .line 157
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 158
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 159
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 160
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    sub-double/2addr v1, v12

    .line 165
    :cond_2
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 168
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 172
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-eqz v7, :cond_5

    .line 175
    new-instance v7, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 176
    const v8, 0x7f0801f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v7, v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 178
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v7, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 181
    const v8, 0x7f0801fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v7, v1, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 183
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v7, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 186
    const v8, 0x7f0801fe

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 187
    sub-double v1, v3, v1

    invoke-virtual {v7, v1, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 188
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_5
    const/16 v1, 0xf

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 192
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 194
    return-object v5

    .line 162
    :cond_6
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    add-double/2addr v1, v12

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    new-instance v0, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select total(amount),count(*), cashierName from rest_order where endtime>=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and endtime<=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and status=1 group by cashierName order by cashierName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 207
    new-instance v5, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 208
    invoke-virtual {v5, v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 209
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 210
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 211
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 218
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 27
    new-instance v4, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " where paymentTime>=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and paymentTime<=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and cashierName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select paymentMethodName, total(amount), count(paymentMethodName) from rest_order_payment"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " group by paymentMethodName order by paymentMethodType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-wide/16 v0, 0x0

    move v2, v3

    .line 41
    :cond_1
    new-instance v7, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 42
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 43
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 44
    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 45
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v8

    add-double/2addr v0, v8

    .line 46
    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v8

    add-int/2addr v2, v8

    .line 47
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 51
    if-lez v2, :cond_2

    .line 52
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 53
    invoke-virtual {v3, p2}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 55
    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 56
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 61
    invoke-virtual {v4, p1}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 64
    return-object v4
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v2, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " where endtime>=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and endtime<=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and status=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and cashierName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "select total(amount),total(discountAmt),total(serviceAmt),total(gratuity),total(tax1Amt),total(tax2Amt),total(tax3Amt) from rest_order"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    const-wide/16 v0, 0x0

    .line 79
    const/4 v5, 0x1

    invoke-virtual {p0, p3, p4, p5, v5}, Lcom/aadhk/restpos/b/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 80
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 82
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v0

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 86
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 89
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-gtz v7, :cond_2

    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_3

    .line 90
    :cond_2
    new-instance v7, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v7}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 91
    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 93
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v5, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 96
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 98
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 101
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 103
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 106
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 108
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 111
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x3

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 113
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 116
    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x4

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 118
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 121
    const/4 v1, 0x6

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x5

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 123
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 126
    const/4 v1, 0x7

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x6

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 128
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 133
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 134
    invoke-virtual {v2, p1}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 136
    return-object v2
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    new-instance v1, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " where endtime>=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' and endtime<=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' and status=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and cashierName=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select count(*),total(amount), total(personnum)  from rest_order"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v3, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 277
    if-lez v3, :cond_1

    .line 278
    new-instance v4, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 279
    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setId(J)V

    .line 280
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 282
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 285
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setId(J)V

    .line 286
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 287
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 288
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 291
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setId(J)V

    .line 292
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 293
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 294
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 297
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setId(J)V

    .line 298
    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 299
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 300
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 306
    invoke-virtual {v1, p2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 308
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 19
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
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    if-eqz p4, :cond_6

    .line 314
    const-string v1, " and a.status=1"

    .line 318
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select itemName, sum(qty) as totalCount, sum(price*qty) as totalAmount from rest_order_item as a, rest_order as b where a.orderid=b.rowid and (b.status=1 or b.status=2) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and b.endtime between \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  group by itemName order by itemName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select a.rowId from rest_order_item as a, rest_order as b where a.orderid=b.rowid and b.status=1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and itemName=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and b.endtime between \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' and \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    const-string v7, "select type, sum(price*qty) as totalAmount from rest_order_modifier where orderItemId=?"

    .line 322
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 327
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 329
    const-wide/16 v1, 0x0

    .line 330
    const/4 v3, 0x0

    .line 332
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 333
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 334
    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v12, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 338
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 340
    :cond_1
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 342
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 344
    :cond_2
    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 345
    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    sub-double/2addr v4, v14

    .line 349
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 351
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 353
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 355
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 357
    new-instance v12, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v12}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 358
    invoke-virtual {v12, v10}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v12, v11}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 360
    invoke-virtual {v12, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 362
    add-double/2addr v1, v4

    .line 363
    add-int/2addr v3, v11

    .line 365
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    if-lez v3, :cond_5

    .line 369
    new-instance v4, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 370
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4, v1, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 372
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 373
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 377
    return-object v8

    .line 316
    :cond_6
    const-string v1, " and a.status!=1"

    goto/16 :goto_0

    .line 347
    :cond_7
    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v4, v14

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    new-instance v0, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select total(amount),count(*) from rest_order where endtime>=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and endtime<=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and status=1 and tableId>0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select total(amount),count(*), tableId,tableName from rest_order where endtime>=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and endtime<=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and status=1 and tableId<=0 group by tableName order by tableId desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 229
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 231
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    .line 232
    new-instance v6, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 233
    invoke-virtual {v6, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 234
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 235
    const v4, 0x7f080208

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 236
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 241
    iget-object v2, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 242
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 245
    new-instance v5, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 246
    invoke-virtual {v5, v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 247
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 248
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 249
    const v3, 0x7f080367

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 255
    :goto_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 260
    invoke-virtual {v0, p2}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 262
    return-object v0

    .line 250
    :cond_3
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 251
    const v3, 0x7f0800d7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    const v3, 0x7f0800d8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 402
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select categoryName, sum(a.qty) as qty, sum(a.price*a.qty) as amt from rest_order_item as a, rest_order as b where a.orderid=b.rowid and b.status=1 and a.status!=1 and b.endtime between \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'  group by categoryName order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "select a.rowId from rest_order_item as a, rest_order as b where a.orderid=b.rowid and b.status=1 and a.status!=1 and categoryName=? and b.endtime between \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' and \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    const-string v5, "select type, sum(price*qty) as totalAmount from rest_order_modifier where orderItemId=?"

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 408
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 411
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 412
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 413
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 414
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v9, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 415
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 417
    :cond_1
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-virtual {v12, v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 419
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 421
    :cond_2
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    .line 422
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    sub-double/2addr v1, v11

    .line 427
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 429
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 430
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 432
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 434
    new-instance v9, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 435
    invoke-virtual {v9, v7}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v9, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 437
    invoke-virtual {v9, v1, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 438
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    return-object v3

    .line 424
    :cond_6
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    add-double/2addr v1, v11

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select modifierName, sum(supp.qty) as totalCount, sum(supp.price*supp.qty) as totalAmount, supp.type from rest_order as sale, rest_order_item as item, rest_order_modifier as supp where sale.rowid=item.orderId and sale.status=1 and item.rowid=supp.orderItemId and sale.endtime between \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' group by modifierName order by modifierName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 449
    iget-object v1, p0, Lcom/aadhk/restpos/b/u;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    const-wide/16 v0, 0x0

    .line 453
    const/4 v2, 0x0

    .line 455
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 456
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 457
    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 458
    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 459
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 460
    const-wide/high16 v9, -0x4010

    mul-double/2addr v3, v9

    .line 463
    :cond_1
    new-instance v9, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 464
    invoke-virtual {v9, v7}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v9, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 466
    invoke-virtual {v9, v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 467
    add-double/2addr v0, v3

    .line 468
    add-int/2addr v2, v8

    .line 470
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    if-lez v2, :cond_2

    .line 474
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 475
    invoke-virtual {v3, p1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v3, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 477
    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setCount(I)V

    .line 478
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    return-object v5
.end method
