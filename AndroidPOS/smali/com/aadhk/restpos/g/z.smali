.class public final Lcom/aadhk/restpos/g/z;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/util/r;

.field private b:Lcom/aadhk/restpos/b/x;

.field private c:Lcom/aadhk/restpos/f/cl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/z;->a:Lcom/aadhk/restpos/util/r;

    .line 25
    new-instance v0, Lcom/aadhk/restpos/f/cl;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/cl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/z;->c:Lcom/aadhk/restpos/f/cl;

    .line 26
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/aadhk/restpos/b/x;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/x;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    .line 28
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
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/g/z;->c:Lcom/aadhk/restpos/f/cl;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/cl;->a()Ljava/util/Map;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v1

    .line 75
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
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
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/g/z;->c:Lcom/aadhk/restpos/f/cl;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cl;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/x;->a(I)V

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v1

    .line 63
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/ServiceFee;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/g/z;->c:Lcom/aadhk/restpos/f/cl;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cl;->b(Lcom/aadhk/restpos/bean/ServiceFee;)Ljava/util/Map;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/x;->b(Lcom/aadhk/restpos/bean/ServiceFee;)V

    .line 36
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v1

    .line 37
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/aadhk/restpos/bean/ServiceFee;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/g/z;->c:Lcom/aadhk/restpos/f/cl;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cl;->a(Lcom/aadhk/restpos/bean/ServiceFee;)Ljava/util/Map;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/x;->a(Lcom/aadhk/restpos/bean/ServiceFee;)V

    .line 49
    iget-object v1, p0, Lcom/aadhk/restpos/g/z;->b:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v1

    .line 50
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
