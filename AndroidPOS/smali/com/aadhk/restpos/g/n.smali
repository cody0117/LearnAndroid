.class public final Lcom/aadhk/restpos/g/n;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/ax;

.field private d:Lcom/aadhk/restpos/b/z;

.field private e:Lcom/aadhk/restpos/b/aa;

.field private f:Lcom/aadhk/restpos/b/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/g/n;->a:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    .line 32
    new-instance v0, Lcom/aadhk/restpos/f/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/ax;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    .line 33
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/aadhk/restpos/b/z;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/z;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    .line 35
    new-instance v1, Lcom/aadhk/restpos/b/aa;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/aa;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/n;->e:Lcom/aadhk/restpos/b/aa;

    .line 36
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/n;->f:Lcom/aadhk/restpos/b/o;

    .line 37
    return-void
.end method

.method private b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->f:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/o;->d(J)Z

    move-result v0

    return v0
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
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ax;->a()Ljava/util/Map;

    move-result-object v1

    .line 67
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/z;->a()V

    :cond_0
    move-object v0, v1

    .line 79
    :goto_0
    return-object v0

    .line 72
    :cond_1
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/aadhk/restpos/g/n;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/z;->a()V

    .line 76
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ax;->a(J)Ljava/util/Map;

    move-result-object v1

    .line 44
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/z;->a(J)V

    :cond_0
    move-object v0, v1

    .line 59
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/aadhk/restpos/g/n;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/z;->a(J)V

    .line 53
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/z;->b()Ljava/util/List;

    move-result-object v1

    .line 54
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Table;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Table;",
            ")",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ax;->a(Lcom/aadhk/restpos/bean/Table;)Ljava/util/Map;

    move-result-object v1

    .line 105
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/z;->a(Lcom/aadhk/restpos/bean/Table;)V

    :cond_0
    move-object v0, v1

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/z;->a(Lcom/aadhk/restpos/bean/Table;)V

    .line 111
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/z;->b()Ljava/util/List;

    move-result-object v1

    .line 112
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ax;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 87
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/z;->a(Ljava/util/List;)V

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/z;->a(Ljava/util/List;)V

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/z;->b()Ljava/util/List;

    move-result-object v1

    .line 94
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ax;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 141
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/z;->a(Ljava/util/Map;)V

    :cond_0
    move-object v0, v1

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/z;->a(Ljava/util/Map;)V

    .line 147
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
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
    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ax;->b()Ljava/util/Map;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/z;->b()Ljava/util/List;

    move-result-object v1

    .line 164
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Table;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Table;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ax;->a(Lcom/aadhk/restpos/bean/Table;)Ljava/util/Map;

    move-result-object v1

    .line 123
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/z;->b(Lcom/aadhk/restpos/bean/Table;)V

    :cond_0
    move-object v0, v1

    .line 133
    :goto_0
    return-object v0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/z;->b(Lcom/aadhk/restpos/bean/Table;)V

    .line 129
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/z;->b()Ljava/util/List;

    move-result-object v1

    .line 130
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
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
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/g/n;->c:Lcom/aadhk/restpos/f/ax;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ax;->c()Ljava/util/Map;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/n;->e:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/aa;->b()Ljava/util/List;

    move-result-object v1

    .line 177
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
