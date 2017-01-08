.class public final Lcom/aadhk/restpos/b/s;
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
    .line 17
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "startDate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "endDate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "startTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "endTime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "enable"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isDisAmt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "amtRate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sun"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mon"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tue"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "wed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fri"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sat"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "itemIds"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "itemNames"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/s;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aadhk/restpos/b/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " select itemIds, name, isDisAmt, amtRate from rest_price_sechedule where enable=1 and \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' between startDate and endDate and \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' between startTime and endTime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    packed-switch p5, :pswitch_data_0

    move-object v3, v4

    .line 131
    :goto_0
    if-eqz v3, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " order by rowid asc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v3, p0, Lcom/aadhk/restpos/b/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 139
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 142
    :goto_1
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 144
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v3, v2

    .line 145
    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 146
    aget-object v7, v6, v3

    .line 147
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-nez v7, :cond_3

    move v3, v1

    .line 153
    :goto_3
    if-eqz v3, :cond_1

    .line 154
    new-instance v4, Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/PriceSchedule;-><init>()V

    .line 155
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setName(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setDiscountAmt(Z)V

    .line 157
    const/4 v0, 0x3

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/aadhk/restpos/bean/PriceSchedule;->setAmtRate(D)V

    :cond_1
    move v0, v3

    move-object v3, v4

    .line 160
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_7

    .line 163
    :cond_2
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 164
    return-object v3

    .line 130
    :pswitch_0
    const-string v3, "sun=1"

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "mon=1"

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "tue=1"

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "wed=1"

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "thu=1"

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "fri=1"

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "sat=1"

    goto/16 :goto_0

    .line 145
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    .line 156
    goto :goto_4

    :cond_5
    move v3, v0

    goto :goto_3

    :cond_6
    move-object v3, v4

    goto :goto_5

    :cond_7
    move-object v4, v3

    goto :goto_1

    :cond_8
    move-object v3, v4

    goto :goto_6

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PriceSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 168
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/b/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_price_sechedule"

    sget-object v3, Lcom/aadhk/restpos/b/s;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    :cond_0
    new-instance v3, Lcom/aadhk/restpos/bean/PriceSchedule;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/PriceSchedule;-><init>()V

    .line 175
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/PriceSchedule;->setId(J)V

    .line 176
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setName(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartDate(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndDate(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartTime(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEndTime(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setEnable(Z)V

    .line 182
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setDiscountAmt(Z)V

    .line 183
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/PriceSchedule;->setAmtRate(D)V

    .line 184
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_2
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setSun(Z)V

    .line 185
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_3
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setMon(Z)V

    .line 186
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    :goto_4
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setTue(Z)V

    .line 187
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v10

    :goto_5
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setWed(Z)V

    .line 188
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    :goto_6
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setThu(Z)V

    .line 189
    const/16 v0, 0xe

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v10

    :goto_7
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setFri(Z)V

    .line 190
    const/16 v0, 0xf

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v10

    :goto_8
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setSat(Z)V

    .line 191
    const/16 v0, 0x10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :goto_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 195
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1
    move v0, v1

    .line 181
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 182
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 184
    goto :goto_2

    :cond_4
    move v0, v1

    .line 185
    goto :goto_3

    :cond_5
    move v0, v1

    .line 186
    goto :goto_4

    :cond_6
    move v0, v1

    .line 187
    goto :goto_5

    :cond_7
    move v0, v1

    .line 188
    goto :goto_6

    :cond_8
    move v0, v1

    .line 189
    goto :goto_7

    :cond_9
    move v0, v1

    .line 190
    goto :goto_8

    .line 198
    :cond_a
    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setItemIds(Ljava/util/List;)V

    .line 199
    const/16 v0, 0x11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->setItemNames(Ljava/lang/String;)V

    .line 200
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 204
    return-object v11
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/b/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_price_sechedule"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/PriceSchedule;)V
    .locals 7
    .parameter

    .prologue
    .line 25
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 26
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "startDate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "endDate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "startTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "endTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    const-string v0, "isDisAmt"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDiscountAmt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    const-string v0, "amtRate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 34
    const-string v0, "sun"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSun()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    const-string v0, "mon"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isMon()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    const-string v0, "tue"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isTue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    const-string v0, "wed"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isWed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    const-string v0, "thu"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isThu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    const-string v0, "fri"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isFri()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 40
    const-string v0, "sat"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSat()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    const-string v1, ""

    .line 42
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemIds()Ljava/util/List;

    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 45
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 46
    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 53
    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "itemNames"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/b/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_price_sechedule"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 56
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/PriceSchedule;)V
    .locals 7
    .parameter

    .prologue
    .line 63
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "startDate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "endDate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "startTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "endTime"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "enable"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v0, "isDisAmt"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isDiscountAmt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    const-string v0, "amtRate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getAmtRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 72
    const-string v0, "sun"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSun()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    const-string v0, "mon"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isMon()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    const-string v0, "tue"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isTue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string v0, "wed"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isWed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    const-string v0, "thu"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isThu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    const-string v0, "fri"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isFri()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    const-string v0, "sat"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->isSat()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 79
    const-string v1, ""

    .line 80
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemIds()Ljava/util/List;

    move-result-object v4

    .line 81
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 82
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 83
    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_1
    const-string v0, "itemIds"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "itemNames"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getItemNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/b/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_price_sechedule"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/PriceSchedule;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    return-void
.end method
