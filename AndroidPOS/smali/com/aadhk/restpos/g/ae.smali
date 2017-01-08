.class public final Lcom/aadhk/restpos/g/ae;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/dg;

.field private d:Lcom/aadhk/restpos/b/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/g/ae;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ae;->b:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/dg;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/dg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ae;->c:Lcom/aadhk/restpos/f/dg;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/ac;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ac;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    .line 30
    return-void
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
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/g/ae;->c:Lcom/aadhk/restpos/f/dg;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/dg;->a()Ljava/util/Map;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/ac;->a()Ljava/util/List;

    move-result-object v1

    .line 81
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/g/ae;->c:Lcom/aadhk/restpos/f/dg;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/f/dg;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ac;->a(I)V

    .line 39
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/ac;->a()Ljava/util/List;

    move-result-object v1

    .line 40
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/User;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/User;",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/g/ae;->c:Lcom/aadhk/restpos/f/dg;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/dg;->b(Lcom/aadhk/restpos/bean/User;)Ljava/util/Map;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ac;->b(Lcom/aadhk/restpos/bean/User;)V

    .line 53
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/ac;->a()Ljava/util/List;

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

.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
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
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/g/ae;->c:Lcom/aadhk/restpos/f/dg;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/dg;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ac;->b(Ljava/lang/String;)Z

    move-result v1

    .line 107
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "serviceData"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/User;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/User;",
            ")",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/g/ae;->c:Lcom/aadhk/restpos/f/dg;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/dg;->a(Lcom/aadhk/restpos/bean/User;)Ljava/util/Map;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ac;->a(Lcom/aadhk/restpos/bean/User;)V

    .line 67
    iget-object v1, p0, Lcom/aadhk/restpos/g/ae;->d:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/ac;->a()Ljava/util/List;

    move-result-object v1

    .line 68
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
