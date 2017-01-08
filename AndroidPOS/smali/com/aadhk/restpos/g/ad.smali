.class public final Lcom/aadhk/restpos/g/ad;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/da;

.field private d:Lcom/aadhk/restpos/b/i;

.field private e:Lcom/aadhk/restpos/b/p;

.field private f:Lcom/aadhk/restpos/b/o;

.field private g:Lcom/aadhk/restpos/b/y;

.field private h:Lcom/aadhk/restpos/b/n;

.field private i:Lcom/aadhk/restpos/b/ab;

.field private j:Lcom/aadhk/restpos/b/b;

.field private k:Lcom/aadhk/restpos/b/s;

.field private l:Lcom/aadhk/restpos/b/l;

.field private m:Lcom/aadhk/restpos/b/z;

.field private n:Lcom/aadhk/restpos/b/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/aadhk/restpos/g/ad;->a:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    .line 57
    new-instance v0, Lcom/aadhk/restpos/f/da;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/da;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    .line 58
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->d:Lcom/aadhk/restpos/b/i;

    .line 60
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    .line 61
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->f:Lcom/aadhk/restpos/b/o;

    .line 62
    new-instance v1, Lcom/aadhk/restpos/b/y;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/y;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->g:Lcom/aadhk/restpos/b/y;

    .line 63
    new-instance v1, Lcom/aadhk/restpos/b/n;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->h:Lcom/aadhk/restpos/b/n;

    .line 64
    new-instance v1, Lcom/aadhk/restpos/b/ab;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ab;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->i:Lcom/aadhk/restpos/b/ab;

    .line 65
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->j:Lcom/aadhk/restpos/b/b;

    .line 66
    new-instance v1, Lcom/aadhk/restpos/b/s;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->k:Lcom/aadhk/restpos/b/s;

    .line 67
    new-instance v1, Lcom/aadhk/restpos/b/l;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->l:Lcom/aadhk/restpos/b/l;

    .line 68
    new-instance v1, Lcom/aadhk/restpos/b/z;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/z;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->m:Lcom/aadhk/restpos/b/z;

    .line 69
    new-instance v1, Lcom/aadhk/restpos/b/k;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ad;->n:Lcom/aadhk/restpos/b/k;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->k:Lcom/aadhk/restpos/b/s;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/s;->a(JLjava/lang/String;Ljava/lang/String;I)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
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
    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->j:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->n:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/k;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZDDDI)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZDDDI)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->d:Lcom/aadhk/restpos/b/i;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/aadhk/restpos/b/i;->a(JZDDDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;IIIZDDDI)Ljava/util/List;
    .locals 13
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
    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->l:Lcom/aadhk/restpos/b/l;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/aadhk/restpos/b/l;->a(Ljava/lang/String;IIIZDDDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/util/Map;
    .locals 4
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
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/da;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/p;->a(J)Ljava/util/List;

    move-result-object v1

    .line 79
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(JI)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/da;->a(JI)Ljava/util/Map;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->f:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/o;->a(JI)V

    .line 175
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(JJJ)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/f/da;->a(JJJ)Ljava/util/Map;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/aadhk/restpos/b/p;->a(JJ)V

    .line 128
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p5, p6}, Lcom/aadhk/restpos/b/p;->b(J)Ljava/util/List;

    move-result-object v1

    .line 129
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Order;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/da;->a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->i:Lcom/aadhk/restpos/b/ab;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ab;->c(Lcom/aadhk/restpos/bean/Order;)V

    .line 226
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Order;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Order;",
            "Lcom/aadhk/restpos/bean/Order;",
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
    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/da;->a(Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Order;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->f:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/o;->a(Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Order;Ljava/lang/String;)J

    move-result-wide v1

    .line 238
    iget-object v3, p0, Lcom/aadhk/restpos/g/ad;->f:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v3, v1, v2}, Lcom/aadhk/restpos/b/o;->c(J)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    .line 239
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/da;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/p;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;)V

    .line 142
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/bean/Customer;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/da;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)Ljava/util/Map;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->s()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v3}, Lcom/aadhk/restpos/util/r;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/aadhk/restpos/g/ad;->i:Lcom/aadhk/restpos/b/ab;

    invoke-virtual {v2, p1, p2, p3}, Lcom/aadhk/restpos/b/ab;->a(Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;)V

    .line 161
    iget-object v2, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    const-string v3, "prefOrderNum"

    invoke-virtual {v2, v3, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "serviceData"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/p;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/da;->a(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/p;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 92
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/da;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->f:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/o;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 187
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/da;->a(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->f:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/o;->a(Ljava/lang/String;J)V

    .line 281
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->h:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/n;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Ljava/util/Map;
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
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/da;->d(J)Ljava/util/Map;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->g:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/y;->c(J)Z

    move-result v1

    .line 200
    const-string v2, "serviceData"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/da;->b(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/p;->b(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 104
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(J)Ljava/util/Map;
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
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/da;->b(J)Ljava/util/Map;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->g:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/y;->b(J)Ljava/util/List;

    move-result-object v1

    .line 213
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/da;->c(Lcom/aadhk/restpos/bean/OrderItem;)Ljava/util/Map;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->e:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/p;->c(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 116
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final d(J)Ljava/util/Map;
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
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/g/ad;->c:Lcom/aadhk/restpos/f/da;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/da;->c(J)Ljava/util/Map;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ad;->m:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/z;->b(J)Ljava/util/List;

    move-result-object v1

    .line 251
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
