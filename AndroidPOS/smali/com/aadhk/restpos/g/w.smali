.class public final Lcom/aadhk/restpos/g/w;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/util/r;

.field private b:Lcom/aadhk/restpos/f/bz;

.field private c:Lcom/aadhk/restpos/b/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/w;->a:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/bz;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/w;->b:Lcom/aadhk/restpos/f/bz;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/u;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    .line 30
    return-void
.end method

.method private static a(ILjava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 157
    add-int/lit8 p0, p0, -0x1

    .line 158
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 159
    if-nez p0, :cond_1

    .line 160
    :cond_2
    if-gtz p0, :cond_0

    .line 164
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    .line 116
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 118
    int-to-double v4, v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 122
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-int v4, v4

    .line 123
    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 124
    add-int/2addr v2, v4

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    rsub-int/lit8 v0, v2, 0x64

    .line 127
    if-lez v0, :cond_2

    .line 128
    invoke-static {v0, p0}, Lcom/aadhk/restpos/g/w;->a(ILjava/util/List;)V

    .line 131
    :cond_2
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    .line 138
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 140
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 144
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    .line 145
    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 146
    add-int/2addr v2, v4

    .line 147
    goto :goto_1

    .line 148
    :cond_1
    rsub-int/lit8 v0, v2, 0x64

    .line 149
    if-lez v0, :cond_2

    .line 150
    invoke-static {v0, p0}, Lcom/aadhk/restpos/g/w;->a(ILjava/util/List;)V

    .line 153
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
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
            "Landroid/content/Context;",
            "[Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 33
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 34
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->b:Lcom/aadhk/restpos/f/bz;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, p2, v0, v1}, Lcom/aadhk/restpos/f/bz;->a([ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 108
    :goto_0
    return-object v3

    .line 37
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const/4 v3, 0x0

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x0

    aget-object v4, p3, v4

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Lcom/aadhk/restpos/b/u;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    const/4 v3, 0x1

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_2

    .line 43
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x1

    aget-object v4, p3, v4

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, p1, v4, v0, v1}, Lcom/aadhk/restpos/b/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    const/4 v3, 0x2

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_3

    .line 47
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x2

    aget-object v4, p3, v4

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, v4, v0, v1}, Lcom/aadhk/restpos/b/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_3
    const/4 v3, 0x3

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_4

    .line 51
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/aadhk/restpos/b/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_4
    const/4 v3, 0x4

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_5

    .line 55
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x4

    aget-object v4, p3, v4

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, p1, v4, v0, v1}, Lcom/aadhk/restpos/b/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_5
    const/4 v3, 0x5

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_6

    .line 59
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x5

    aget-object v4, p3, v4

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/aadhk/restpos/b/u;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_6
    const/4 v3, 0x6

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_7

    .line 63
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const-string v4, "amt desc"

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, v0, v1, v4}, Lcom/aadhk/restpos/b/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 64
    invoke-static {v3}, Lcom/aadhk/restpos/g/w;->a(Ljava/util/List;)V

    .line 65
    new-instance v4, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 66
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 67
    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 69
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_7
    const/4 v3, 0x7

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_8

    .line 73
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const-string v4, "qty desc"

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, v0, v1, v4}, Lcom/aadhk/restpos/b/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 74
    invoke-static {v3}, Lcom/aadhk/restpos/g/w;->b(Ljava/util/List;)V

    .line 75
    new-instance v4, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 76
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 77
    const/4 v5, 0x7

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 79
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_8
    const/16 v3, 0x8

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_9

    .line 83
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/aadhk/restpos/b/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 84
    new-instance v4, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 85
    const/16 v5, 0x8

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 87
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_9
    const/16 v3, 0x9

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_a

    .line 91
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    const/4 v4, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/aadhk/restpos/b/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 92
    new-instance v4, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 93
    const/16 v5, 0x9

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 95
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_a
    const/16 v3, 0xa

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_b

    .line 99
    iget-object v3, p0, Lcom/aadhk/restpos/g/w;->c:Lcom/aadhk/restpos/b/u;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v3, v0, v1, v2}, Lcom/aadhk/restpos/b/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 100
    new-instance v4, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v4}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 101
    const/16 v5, 0xa

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/bean/Report;->setName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v3}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 103
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_b
    const-string v3, "serviceStatus"

    const-string v4, "1"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "serviceData"

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v9

    goto/16 :goto_0
.end method
