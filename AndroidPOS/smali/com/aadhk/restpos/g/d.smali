.class public final Lcom/aadhk/restpos/g/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/m;

.field private d:Lcom/aadhk/restpos/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/g/d;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/d;->b:Lcom/aadhk/restpos/util/r;

    .line 27
    new-instance v0, Lcom/aadhk/restpos/f/m;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/d;->c:Lcom/aadhk/restpos/f/m;

    .line 28
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/aadhk/restpos/b/e;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/d;->d:Lcom/aadhk/restpos/b/e;

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
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/aadhk/restpos/g/d;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/g/d;->c:Lcom/aadhk/restpos/f/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/m;->a()Ljava/util/Map;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/d;->d:Lcom/aadhk/restpos/b/e;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/e;->a()Ljava/util/List;

    move-result-object v1

    .line 38
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
