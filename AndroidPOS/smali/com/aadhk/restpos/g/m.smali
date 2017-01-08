.class public final Lcom/aadhk/restpos/g/m;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/at;

.field private d:Lcom/aadhk/restpos/b/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/g/m;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/m;->b:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/at;

    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/m;->c:Lcom/aadhk/restpos/f/at;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/aa;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/aa;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    .line 30
    return-void
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/aa;->a(I)Z

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
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/g/m;->c:Lcom/aadhk/restpos/f/at;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/at;->a()Ljava/util/Map;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/aadhk/restpos/g/m;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/aa;->a()V

    .line 61
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(I)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/g/m;->c:Lcom/aadhk/restpos/f/at;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/f/at;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/g/m;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "serviceStatus"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/aa;->a(J)V

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/aa;->b()Ljava/util/List;

    move-result-object v1

    .line 42
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/TableGroup;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/g/m;->c:Lcom/aadhk/restpos/f/at;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/at;->a(Lcom/aadhk/restpos/bean/TableGroup;)Ljava/util/Map;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/aa;->a(Lcom/aadhk/restpos/bean/TableGroup;)V

    .line 86
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/aa;->b()Ljava/util/List;

    move-result-object v1

    .line 87
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/g/m;->c:Lcom/aadhk/restpos/f/at;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/at;->b()Ljava/util/Map;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/aa;->b()Ljava/util/List;

    move-result-object v1

    .line 113
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/TableGroup;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/g/m;->c:Lcom/aadhk/restpos/f/at;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/at;->a(Lcom/aadhk/restpos/bean/TableGroup;)Ljava/util/Map;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/aa;->b(Lcom/aadhk/restpos/bean/TableGroup;)V

    .line 99
    iget-object v1, p0, Lcom/aadhk/restpos/g/m;->d:Lcom/aadhk/restpos/b/aa;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/aa;->b()Ljava/util/List;

    move-result-object v1

    .line 100
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
