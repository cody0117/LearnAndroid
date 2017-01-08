.class public final Lcom/aadhk/restpos/g/l;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/ap;

.field private d:Lcom/aadhk/restpos/b/l;

.field private e:Lcom/aadhk/restpos/b/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/g/l;->a:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/l;->b:Lcom/aadhk/restpos/util/r;

    .line 30
    new-instance v0, Lcom/aadhk/restpos/f/ap;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/l;->c:Lcom/aadhk/restpos/f/ap;

    .line 31
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/aadhk/restpos/b/l;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/l;->d:Lcom/aadhk/restpos/b/l;

    .line 33
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/l;->e:Lcom/aadhk/restpos/b/m;

    .line 34
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
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/g/l;->c:Lcom/aadhk/restpos/f/ap;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/ap;->a()Ljava/util/Map;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/m;->a()Ljava/util/List;

    move-result-object v1

    .line 98
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
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
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/g/l;->c:Lcom/aadhk/restpos/f/ap;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ap;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->d:Lcom/aadhk/restpos/b/l;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/l;->a(J)V

    .line 42
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/ModifierGroup;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Modifier;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/g/l;->c:Lcom/aadhk/restpos/f/ap;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ap;->a(Lcom/aadhk/restpos/bean/ModifierGroup;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/m;->a(Lcom/aadhk/restpos/bean/ModifierGroup;Ljava/util/List;)V

    .line 66
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/m;->a()Ljava/util/List;

    move-result-object v1

    .line 67
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(J)Ljava/util/Map;
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
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/g/l;->c:Lcom/aadhk/restpos/f/ap;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/ap;->b(J)Ljava/util/Map;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/m;->a(J)V

    .line 53
    iget-object v1, p0, Lcom/aadhk/restpos/g/l;->e:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/m;->a()Ljava/util/List;

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
