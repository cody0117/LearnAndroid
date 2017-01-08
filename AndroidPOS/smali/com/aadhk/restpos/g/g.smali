.class public final Lcom/aadhk/restpos/g/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/t;

.field private d:Lcom/aadhk/restpos/b/k;

.field private e:Lcom/aadhk/restpos/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/aadhk/restpos/g/g;->a:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/g;->b:Lcom/aadhk/restpos/util/r;

    .line 29
    new-instance v0, Lcom/aadhk/restpos/f/t;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/g;->c:Lcom/aadhk/restpos/f/t;

    .line 30
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/aadhk/restpos/b/k;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    .line 32
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/g;->e:Lcom/aadhk/restpos/b/i;

    .line 33
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/g/g;->c:Lcom/aadhk/restpos/f/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/t;->a()Ljava/util/Map;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

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
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/g/g;->c:Lcom/aadhk/restpos/f/t;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/t;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/k;->a(I)V

    .line 67
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

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

.method public final a(Lcom/aadhk/restpos/bean/KitchenNote;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/g/g;->c:Lcom/aadhk/restpos/f/t;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/t;->b(Lcom/aadhk/restpos/bean/KitchenNote;)Ljava/util/Map;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/k;->b(Lcom/aadhk/restpos/bean/KitchenNote;)V

    .line 41
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

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

.method public final b(Lcom/aadhk/restpos/bean/KitchenNote;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/g/g;->c:Lcom/aadhk/restpos/f/t;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/t;->a(Lcom/aadhk/restpos/bean/KitchenNote;)Ljava/util/Map;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/k;->a(Lcom/aadhk/restpos/bean/KitchenNote;)V

    .line 54
    iget-object v1, p0, Lcom/aadhk/restpos/g/g;->d:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

    move-result-object v1

    .line 55
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
