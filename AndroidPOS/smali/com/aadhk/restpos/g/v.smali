.class public final Lcom/aadhk/restpos/g/v;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/bx;

.field private d:Lcom/aadhk/restpos/b/o;

.field private e:Lcom/aadhk/restpos/b/q;

.field private f:Lcom/aadhk/restpos/b/p;

.field private g:Lcom/aadhk/restpos/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/g/v;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/v;->b:Lcom/aadhk/restpos/util/r;

    .line 36
    new-instance v0, Lcom/aadhk/restpos/f/bx;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/v;->c:Lcom/aadhk/restpos/f/bx;

    .line 37
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/aadhk/restpos/b/o;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/v;->d:Lcom/aadhk/restpos/b/o;

    .line 39
    new-instance v1, Lcom/aadhk/restpos/b/q;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/v;->e:Lcom/aadhk/restpos/b/q;

    .line 40
    new-instance v1, Lcom/aadhk/restpos/b/p;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/v;->f:Lcom/aadhk/restpos/b/p;

    .line 41
    new-instance v1, Lcom/aadhk/restpos/b/e;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/v;->g:Lcom/aadhk/restpos/b/e;

    .line 42
    return-void
.end method


# virtual methods
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
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/aadhk/restpos/g/v;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/g/v;->c:Lcom/aadhk/restpos/f/bx;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/bx;->a(J)Ljava/util/Map;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/v;->d:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/o;->a(J)V

    .line 50
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;
    .locals 5
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
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/g/v;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/g/v;->c:Lcom/aadhk/restpos/f/bx;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bx;->a(Lcom/aadhk/restpos/bean/Order;)Ljava/util/Map;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/v;->e:Lcom/aadhk/restpos/b/q;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/q;->a(J)Ljava/util/List;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/aadhk/restpos/g/v;->f:Lcom/aadhk/restpos/b/p;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/b/p;->a(J)Ljava/util/List;

    move-result-object v2

    .line 74
    invoke-virtual {p1, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    .line 75
    invoke-virtual {p1, v2}, Lcom/aadhk/restpos/bean/Order;->setOrderItems(Ljava/util/List;)V

    .line 76
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "serviceData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/aadhk/restpos/g/v;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/g/v;->c:Lcom/aadhk/restpos/f/bx;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aadhk/restpos/f/bx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/v;->d:Lcom/aadhk/restpos/b/o;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/aadhk/restpos/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 61
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(J)Lcom/aadhk/restpos/bean/Customer;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/g/v;->g:Lcom/aadhk/restpos/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/e;->a(J)Lcom/aadhk/restpos/bean/Customer;

    move-result-object v0

    return-object v0
.end method
