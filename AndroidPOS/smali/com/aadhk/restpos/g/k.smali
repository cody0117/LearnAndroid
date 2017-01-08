.class public final Lcom/aadhk/restpos/g/k;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/ai;

.field private d:Lcom/aadhk/restpos/b/t;

.field private e:Lcom/aadhk/restpos/b/m;

.field private f:Lcom/aadhk/restpos/b/k;

.field private g:Lcom/aadhk/restpos/b/b;

.field private h:Lcom/aadhk/restpos/b/i;

.field private i:Lcom/aadhk/restpos/b/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/aadhk/restpos/g/k;->a:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    .line 40
    new-instance v0, Lcom/aadhk/restpos/f/ai;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/ai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    .line 41
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/aadhk/restpos/b/t;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/k;->d:Lcom/aadhk/restpos/b/t;

    .line 43
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/k;->e:Lcom/aadhk/restpos/b/m;

    .line 44
    new-instance v1, Lcom/aadhk/restpos/b/k;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/k;->f:Lcom/aadhk/restpos/b/k;

    .line 45
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/k;->g:Lcom/aadhk/restpos/b/b;

    .line 46
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    .line 47
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/k;->i:Lcom/aadhk/restpos/b/p;

    .line 48
    return-void
.end method

.method private a(JZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->i:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/b/p;->a(JZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->d:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/t;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
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
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ai;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/aadhk/restpos/g/k;->a(JZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/i;->a(J)V

    .line 119
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_1
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/ai;->a(JI)Ljava/util/Map;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/i;->a(JI)V

    .line 202
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(JIII)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/f/ai;->a(JIII)Ljava/util/Map;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/b/i;->a(JIII)V

    .line 191
    const-string v0, "serviceStatus"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/ai;->a(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/i;->a(JLjava/lang/String;)V

    .line 169
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Item;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Item;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ai;->a(Lcom/aadhk/restpos/bean/Item;)Ljava/util/Map;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/i;->a(Lcom/aadhk/restpos/bean/Item;)V

    .line 84
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;)",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ai;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/i;->a(Ljava/util/List;)V

    .line 213
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ai;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/i;->a(Ljava/util/Map;)V

    .line 107
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
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
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ai;->d()Ljava/util/Map;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/m;->b()Ljava/util/Map;

    move-result-object v1

    .line 60
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
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
    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ai;->c(J)Ljava/util/Map;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/aadhk/restpos/g/k;->a(JZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/i;->b(J)V

    .line 225
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_1
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(JLjava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/ai;->b(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aadhk/restpos/b/i;->b(JLjava/lang/String;)V

    .line 180
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Item;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Item;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ai;->b(Lcom/aadhk/restpos/bean/Item;)Ljava/util/Map;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/i;->b(Lcom/aadhk/restpos/bean/Item;)V

    .line 95
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
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
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ai;->e()Ljava/util/Map;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->f:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/k;->b()Ljava/util/Map;

    move-result-object v1

    .line 72
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(J)Ljava/util/Map;
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
    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ai;->b(J)Ljava/util/Map;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->h:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/i;->c(J)Ljava/util/List;

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

.method public final d()Ljava/util/Map;
    .locals 4
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
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ai;->a()Ljava/util/Map;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->g:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->c()Ljava/util/List;

    move-result-object v1

    .line 133
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e()Ljava/util/Map;
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
    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ai;->c()Ljava/util/Map;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->f:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

    move-result-object v1

    .line 145
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f()Ljava/util/Map;
    .locals 4
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
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/g/k;->c:Lcom/aadhk/restpos/f/ai;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ai;->b()Ljava/util/Map;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/k;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/m;->a()Ljava/util/List;

    move-result-object v1

    .line 157
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
