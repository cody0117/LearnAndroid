.class public final Lcom/aadhk/restpos/g/ac;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/cy;

.field private d:Lcom/aadhk/restpos/b/z;

.field private e:Lcom/aadhk/restpos/b/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/g/ac;->a:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ac;->b:Lcom/aadhk/restpos/util/r;

    .line 30
    new-instance v0, Lcom/aadhk/restpos/f/cy;

    iget-object v1, p0, Lcom/aadhk/restpos/g/ac;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/cy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/ac;->c:Lcom/aadhk/restpos/f/cy;

    .line 31
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/aadhk/restpos/b/z;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/z;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ac;->d:Lcom/aadhk/restpos/b/z;

    .line 33
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/ac;->e:Lcom/aadhk/restpos/b/o;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/Map;
    .locals 3
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
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/aadhk/restpos/g/ac;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/g/ac;->c:Lcom/aadhk/restpos/f/cy;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cy;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ac;->d:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/z;->a(I)Ljava/util/List;

    move-result-object v1

    .line 43
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/aadhk/restpos/g/ac;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/g/ac;->c:Lcom/aadhk/restpos/f/cy;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cy;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/ac;->e:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/o;->b(J)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    .line 56
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
