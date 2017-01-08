.class public final Lcom/aadhk/restpos/g/o;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/bd;

.field private d:Lcom/aadhk/restpos/b/o;

.field private e:Lcom/aadhk/restpos/b/e;

.field private f:Lcom/aadhk/restpos/b/b;

.field private g:Lcom/aadhk/restpos/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/g/o;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/o;->b:Lcom/aadhk/restpos/util/r;

    .line 36
    new-instance v0, Lcom/aadhk/restpos/f/bd;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/o;->c:Lcom/aadhk/restpos/f/bd;

    .line 37
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/o;->d:Lcom/aadhk/restpos/b/o;

    .line 39
    new-instance v1, Lcom/aadhk/restpos/b/e;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/o;->e:Lcom/aadhk/restpos/b/e;

    .line 40
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/o;->f:Lcom/aadhk/restpos/b/b;

    .line 41
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/o;->g:Lcom/aadhk/restpos/b/i;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/g/o;->f:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZDDDI)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZDDDI)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/g/o;->g:Lcom/aadhk/restpos/b/i;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/aadhk/restpos/b/i;->a(JZDDDI)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/aadhk/restpos/g/o;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/g/o;->c:Lcom/aadhk/restpos/f/bd;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bd;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/o;->d:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/o;->e(J)Ljava/util/List;

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
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/aadhk/restpos/g/o;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/g/o;->c:Lcom/aadhk/restpos/f/bd;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bd;->b(J)Ljava/util/Map;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/o;->d:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/o;->f(J)Ljava/util/List;

    move-result-object v1

    .line 62
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(J)Ljava/util/Map;
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
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/aadhk/restpos/g/o;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/g/o;->c:Lcom/aadhk/restpos/f/bd;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bd;->c(J)Ljava/util/Map;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/o;->e:Lcom/aadhk/restpos/b/e;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/e;->a(J)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v1

    .line 74
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
