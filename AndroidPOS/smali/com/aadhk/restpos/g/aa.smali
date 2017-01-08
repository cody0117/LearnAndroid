.class public final Lcom/aadhk/restpos/g/aa;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/util/r;

.field private b:Lcom/aadhk/restpos/f/cq;

.field private c:Lcom/aadhk/restpos/b/c;

.field private d:Lcom/aadhk/restpos/b/t;

.field private e:Lcom/aadhk/restpos/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    .line 30
    new-instance v0, Lcom/aadhk/restpos/f/cq;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/cq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/aa;->b:Lcom/aadhk/restpos/f/cq;

    .line 31
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/aadhk/restpos/b/c;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/aa;->c:Lcom/aadhk/restpos/b/c;

    .line 33
    new-instance v1, Lcom/aadhk/restpos/b/t;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/aa;->d:Lcom/aadhk/restpos/b/t;

    .line 34
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/aa;->e:Lcom/aadhk/restpos/b/i;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->b:Lcom/aadhk/restpos/f/cq;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/cq;->a()Ljava/util/Map;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v1, "prefOrderNum"

    iget-object v2, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "prefOrderNumPrefix"

    iget-object v2, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "prefOrderNumInitial"

    iget-object v2, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "prefOrderNumSuffix"

    iget-object v2, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->b:Lcom/aadhk/restpos/f/cq;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cq;->a(Lcom/aadhk/restpos/bean/Company;)Ljava/util/Map;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->c:Lcom/aadhk/restpos/b/c;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/c;->c(Lcom/aadhk/restpos/bean/Company;)V

    .line 64
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;I)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Company;",
            "I)",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->b:Lcom/aadhk/restpos/f/cq;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cq;->a(Lcom/aadhk/restpos/bean/Company;I)Ljava/util/Map;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->c:Lcom/aadhk/restpos/b/c;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/c;->a(Lcom/aadhk/restpos/bean/Company;I)V

    .line 53
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->b:Lcom/aadhk/restpos/f/cq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/restpos/f/cq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->e:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/i;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/Map;
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
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->a:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->e()I

    move-result v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/l;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->b:Lcom/aadhk/restpos/f/cq;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/cq;->a(Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/g/aa;->d:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/t;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
