.class public final Lcom/aadhk/restpos/g/af;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/dl;

.field private d:Lcom/aadhk/restpos/b/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/g/af;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/af;->b:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/dl;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/dl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/af;->c:Lcom/aadhk/restpos/f/dl;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/n;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

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
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/g/af;->c:Lcom/aadhk/restpos/f/dl;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/dl;->a()Ljava/util/Map;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/n;->a()Ljava/util/List;

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
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/g/af;->c:Lcom/aadhk/restpos/f/dl;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/dl;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/n;->a(I)V

    .line 38
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/n;->a()Ljava/util/List;

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

.method public final a(Lcom/aadhk/restpos/bean/Note;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Note;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/g/af;->c:Lcom/aadhk/restpos/f/dl;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/dl;->a(Lcom/aadhk/restpos/bean/Note;)Ljava/util/Map;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/n;->a(Lcom/aadhk/restpos/bean/Note;)V

    .line 51
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/n;->a()Ljava/util/List;

    move-result-object v1

    .line 52
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Note;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Note;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/g/af;->c:Lcom/aadhk/restpos/f/dl;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/dl;->b(Lcom/aadhk/restpos/bean/Note;)Ljava/util/Map;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/n;->b(Lcom/aadhk/restpos/bean/Note;)V

    .line 64
    iget-object v1, p0, Lcom/aadhk/restpos/g/af;->d:Lcom/aadhk/restpos/b/n;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/n;->a()Ljava/util/List;

    move-result-object v1

    .line 65
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
