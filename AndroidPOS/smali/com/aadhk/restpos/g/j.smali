.class public final Lcom/aadhk/restpos/g/j;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/ac;

.field private d:Lcom/aadhk/restpos/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/g/j;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/ac;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    .line 30
    return-void
.end method

.method private b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/b;->b(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
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
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ac;->a()Ljava/util/Map;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/aadhk/restpos/g/j;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->a()V

    .line 109
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 110
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ac;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aadhk/restpos/g/j;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/b;->a(J)V

    .line 92
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 93
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Category;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Category;",
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ac;->a(Lcom/aadhk/restpos/bean/Category;)Ljava/util/Map;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/b;->b(Lcom/aadhk/restpos/bean/Category;)V

    .line 38
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 39
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
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
            "Lcom/aadhk/restpos/bean/Category;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ac;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/b;->a(Ljava/util/List;)V

    .line 63
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 64
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
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
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ac;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/b;->a(Ljava/util/Map;)V

    .line 52
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
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ac;->b()Ljava/util/Map;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 123
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Category;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Category;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/g/j;->c:Lcom/aadhk/restpos/f/ac;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ac;->a(Lcom/aadhk/restpos/bean/Category;)Ljava/util/Map;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/b;->a(Lcom/aadhk/restpos/bean/Category;)V

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/g/j;->d:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 77
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
