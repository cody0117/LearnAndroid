.class public final Lcom/aadhk/restpos/g/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/b/c;

.field private d:Lcom/aadhk/restpos/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/g/a;->a:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/a;->b:Lcom/aadhk/restpos/util/r;

    .line 26
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/aadhk/restpos/f/a;

    invoke-direct {v1, p1}, Lcom/aadhk/restpos/f/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/a;->d:Lcom/aadhk/restpos/f/a;

    .line 28
    new-instance v1, Lcom/aadhk/restpos/b/c;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/a;->c:Lcom/aadhk/restpos/b/c;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/bean/Company;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/g/a;->c:Lcom/aadhk/restpos/b/c;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/c;->a()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Company;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/aadhk/restpos/g/a;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/g/a;->d:Lcom/aadhk/restpos/f/a;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/a;->b(Lcom/aadhk/restpos/bean/Company;)Ljava/util/Map;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/a;->c:Lcom/aadhk/restpos/b/c;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/c;->b(Lcom/aadhk/restpos/bean/Company;)V

    .line 40
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Company;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Company;",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/a;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/g/a;->d:Lcom/aadhk/restpos/f/a;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/a;->a(Lcom/aadhk/restpos/bean/Company;)Ljava/util/Map;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/a;->c:Lcom/aadhk/restpos/b/c;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/c;->a(Lcom/aadhk/restpos/bean/Company;)V

    .line 51
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
