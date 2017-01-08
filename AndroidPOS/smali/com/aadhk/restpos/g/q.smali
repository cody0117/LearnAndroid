.class public final Lcom/aadhk/restpos/g/q;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/bi;

.field private d:Lcom/aadhk/restpos/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aadhk/restpos/g/q;->a:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    .line 31
    new-instance v0, Lcom/aadhk/restpos/f/bi;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    .line 32
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/aadhk/restpos/b/a;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/bi;->b()Ljava/util/Map;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "serviceLastTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(J)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bi;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/a;->a(J)I

    .line 42
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)Ljava/util/Map;
    .locals 34
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 71
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 73
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    invoke-virtual {v3}, Lcom/aadhk/restpos/f/bi;->a()Ljava/util/Map;

    move-result-object v16

    .line 76
    const-string v3, "serviceStatus"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    const-string v3, "serviceLastTime"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    const-string v4, "serviceSencondLastTime"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    const-string v5, "serviceStartAmount"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 81
    const-string v5, "servicePayingAmount"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 82
    const-string v5, "servicePayoutAmount"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 83
    const-string v5, "serviceOrdersTotalAmount"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 84
    const-string v5, "serviceNextAmount"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_0
    move-object/from16 v24, v4

    move-object/from16 v25, v3

    move-wide v3, v13

    move-wide v14, v5

    move-object/from16 v13, v25

    move-wide v5, v11

    move-object/from16 v12, v24

    move-wide/from16 v26, v7

    move-wide v7, v9

    move-wide/from16 v9, v26

    :goto_1
    move/from16 v11, p2

    .line 103
    invoke-static/range {v3 .. v11}, Lcom/aadhk/restpos/util/m;->a(DDDDI)D

    move-result-wide v19

    .line 104
    move-wide/from16 v0, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v14, v15, v2}, Lcom/aadhk/restpos/util/m;->c(DDI)D

    move-result-wide v21

    .line 106
    new-instance v11, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v11}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v23, 0x7f08011b

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v11, v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 110
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f08011c

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, v9, v10}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 114
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f080104

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v5, v6}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 118
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v7, v8}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 122
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 125
    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 126
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 129
    move-wide/from16 v0, v21

    neg-double v4, v0

    .line 134
    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 135
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08011f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v14, v15}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 139
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v3, "serviceLastTime"

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "serviceSencondLastTime"

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v3, "serviceData"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object v16

    .line 88
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 89
    if-eqz v16, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    if-eqz v5, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v3

    .line 96
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v6, v5, v0, v7}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v12

    .line 97
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v6, v5, v0, v7}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v10

    .line 98
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    move-object/from16 v0, v16

    invoke-virtual {v6, v5, v0}, Lcom/aadhk/restpos/b/a;->b(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    .line 99
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v7, v0}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v6

    move-wide v14, v3

    move-object v4, v5

    .line 101
    :cond_1
    const-string v3, "serviceStatus"

    const-string v5, "1"

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v4

    move-wide v3, v14

    move-wide v14, v6

    move-wide v5, v12

    move-object/from16 v13, v16

    move-object/from16 v12, v24

    move-object/from16 v16, v17

    move-wide/from16 v25, v10

    move-wide/from16 v27, v8

    move-wide/from16 v9, v27

    move-wide/from16 v7, v25

    goto/16 :goto_1

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v3

    goto :goto_2

    :cond_3
    move-object v3, v5

    move-wide/from16 v24, v6

    move-wide/from16 v5, v24

    move-wide/from16 v26, v8

    move-wide/from16 v7, v26

    move-wide/from16 v28, v10

    move-wide/from16 v9, v28

    move-wide/from16 v30, v12

    move-wide/from16 v11, v30

    move-wide/from16 v32, v14

    move-wide/from16 v13, v32

    goto/16 :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/CashRegister;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/CashRegister;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bi;->a(Lcom/aadhk/restpos/bean/CashRegister;)Ljava/util/Map;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/a;->a(Lcom/aadhk/restpos/bean/CashRegister;)V

    .line 53
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 152
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/CashRegister;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/CashRegister;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/g/q;->c:Lcom/aadhk/restpos/f/bi;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bi;->b(Lcom/aadhk/restpos/bean/CashRegister;)Ljava/util/Map;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/q;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/a;->b(Lcom/aadhk/restpos/bean/CashRegister;)I

    .line 64
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
