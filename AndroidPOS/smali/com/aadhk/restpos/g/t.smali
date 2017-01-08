.class public final Lcom/aadhk/restpos/g/t;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/bu;

.field private d:Lcom/aadhk/restpos/b/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/g/t;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/t;->b:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/bu;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/t;->c:Lcom/aadhk/restpos/f/bu;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/s;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/t;->d:Lcom/aadhk/restpos/b/s;

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
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/g/t;->c:Lcom/aadhk/restpos/f/bu;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/bu;->a()Ljava/util/Map;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->d:Lcom/aadhk/restpos/b/s;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/s;->a()Ljava/util/List;

    move-result-object v1

    .line 71
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/g/t;->c:Lcom/aadhk/restpos/f/bu;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bu;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->d:Lcom/aadhk/restpos/b/s;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/s;->a(J)V

    .line 38
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/PriceSchedule;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/PriceSchedule;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/g/t;->c:Lcom/aadhk/restpos/f/bu;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bu;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)Ljava/util/Map;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->d:Lcom/aadhk/restpos/b/s;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/s;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 49
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/PriceSchedule;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/PriceSchedule;",
            ")",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/g/t;->c:Lcom/aadhk/restpos/f/bu;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bu;->b(Lcom/aadhk/restpos/bean/PriceSchedule;)Ljava/util/Map;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/t;->d:Lcom/aadhk/restpos/b/s;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/s;->b(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 60
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
