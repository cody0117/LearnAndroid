.class public final Lcom/aadhk/restpos/g/ab;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/cs;

.field private d:Lcom/aadhk/restpos/f/da;

.field private e:Lcom/aadhk/restpos/b/y;

.field private f:Lcom/aadhk/restpos/b/o;

.field private g:Lcom/aadhk/restpos/b/p;

.field private h:Lcom/aadhk/restpos/b/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/aadhk/restpos/g/ab;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    .line 39
    new-instance v0, Lcom/aadhk/restpos/f/cs;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/cs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    .line 40
    new-instance v0, Lcom/aadhk/restpos/f/da;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/da;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ab;->d:Lcom/aadhk/restpos/f/da;

    .line 41
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/aadhk/restpos/b/y;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/y;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    .line 43
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ab;->f:Lcom/aadhk/restpos/b/o;

    .line 44
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ab;->g:Lcom/aadhk/restpos/b/p;

    .line 45
    new-instance v1, Lcom/aadhk/restpos/b/ab;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ab;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ab;->h:Lcom/aadhk/restpos/b/ab;

    .line 46
    return-void
.end method


# virtual methods
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
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cs;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/y;->b(J)Ljava/util/List;

    move-result-object v1

    .line 67
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(JJ)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aadhk/restpos/f/cs;->a(JJ)Ljava/util/Map;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->g:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/aadhk/restpos/b/p;->b(JJ)Ljava/util/List;

    move-result-object v1

    .line 180
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(JJLjava/util/List;D)Ljava/util/Map;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/f/cs;->a(JJLjava/util/List;D)Ljava/util/Map;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/b/y;->a(JJLjava/util/List;D)V

    .line 134
    const-string v0, "serviceStatus"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    goto :goto_0
.end method

.method public final a(JJZ)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/f/cs;->a(JJZ)Ljava/util/Map;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/y;->a(JJZ)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v0, p3, p4}, Lcom/aadhk/restpos/b/y;->b(J)Ljava/util/List;

    move-result-object v0

    .line 93
    const-string v1, "serviceData"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "serviceStatus"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/SplitBill;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/SplitBill;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cs;->a(Lcom/aadhk/restpos/bean/SplitBill;)Ljava/util/Map;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/y;->b(Lcom/aadhk/restpos/bean/SplitBill;)V

    .line 55
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/SplitBill;J)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/SplitBill;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cs;->b(Lcom/aadhk/restpos/bean/SplitBill;)Ljava/util/Map;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/y;->a(Lcom/aadhk/restpos/bean/SplitBill;)V

    .line 106
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p2, p3}, Lcom/aadhk/restpos/b/y;->b(J)Ljava/util/List;

    move-result-object v1

    .line 107
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;J)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/SplitBill;",
            ">;J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/cs;->a(Ljava/util/List;J)Ljava/util/Map;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/y;->a(Ljava/util/List;J)V

    .line 120
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p2, p3}, Lcom/aadhk/restpos/b/y;->b(J)Ljava/util/List;

    move-result-object v1

    .line 121
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/g/ab;->c:Lcom/aadhk/restpos/f/cs;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cs;->b(J)Ljava/util/Map;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ab;->e:Lcom/aadhk/restpos/b/y;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/y;->a(J)V

    .line 80
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
