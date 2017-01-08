.class public final Lcom/aadhk/restpos/g/s;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/br;

.field private d:Lcom/aadhk/restpos/b/o;

.field private e:Lcom/aadhk/restpos/b/ab;

.field private f:Lcom/aadhk/restpos/b/h;

.field private g:Lcom/aadhk/restpos/b/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/g/s;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    .line 36
    new-instance v0, Lcom/aadhk/restpos/f/br;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/br;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/s;->c:Lcom/aadhk/restpos/f/br;

    .line 37
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/s;->d:Lcom/aadhk/restpos/b/o;

    .line 39
    new-instance v1, Lcom/aadhk/restpos/b/ab;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ab;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/s;->e:Lcom/aadhk/restpos/b/ab;

    .line 40
    new-instance v1, Lcom/aadhk/restpos/b/h;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/h;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/s;->f:Lcom/aadhk/restpos/b/h;

    .line 41
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/s;->g:Lcom/aadhk/restpos/b/p;

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
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->f:Lcom/aadhk/restpos/b/h;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/h;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->c:Lcom/aadhk/restpos/f/br;

    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->m()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/aadhk/restpos/f/br;->a(JZ)Ljava/util/Map;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->g:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/p;->b(J)Ljava/util/List;

    move-result-object v0

    .line 70
    :goto_1
    const-string v2, "serviceData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->g:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/p;->a(J)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(JJ)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->c:Lcom/aadhk/restpos/f/br;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aadhk/restpos/f/br;->a(JJ)Ljava/util/Map;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->g:Lcom/aadhk/restpos/b/p;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/aadhk/restpos/b/p;->b(JJ)Ljava/util/List;

    move-result-object v1

    .line 51
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Order;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->c:Lcom/aadhk/restpos/f/br;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/br;->a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->e:Lcom/aadhk/restpos/b/ab;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ab;->b(Lcom/aadhk/restpos/bean/Order;)V

    .line 97
    :goto_1
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->e:Lcom/aadhk/restpos/b/ab;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ab;->a(Lcom/aadhk/restpos/bean/Order;)V

    goto :goto_1
.end method

.method public final b(J)Ljava/util/Map;
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
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/g/s;->c:Lcom/aadhk/restpos/f/br;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/br;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/s;->d:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/o;->g(J)V

    .line 82
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
