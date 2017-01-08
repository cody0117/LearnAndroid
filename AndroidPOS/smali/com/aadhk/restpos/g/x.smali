.class public final Lcom/aadhk/restpos/g/x;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/cb;

.field private d:Lcom/aadhk/restpos/b/v;

.field private e:Lcom/aadhk/restpos/b/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/g/x;->a:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    .line 30
    new-instance v0, Lcom/aadhk/restpos/f/cb;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/cb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    .line 31
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/aadhk/restpos/b/v;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/v;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    .line 33
    new-instance v1, Lcom/aadhk/restpos/b/z;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/z;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/x;->e:Lcom/aadhk/restpos/b/z;

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
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cb;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/v;->b(I)V

    .line 82
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(IZ)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cb;->a(IZ)Ljava/util/Map;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/v;->a(I)V

    .line 42
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p2}, Lcom/aadhk/restpos/b/v;->a(Z)Ljava/util/Map;

    move-result-object v1

    .line 43
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Reservation;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Reservation;",
            "Z)",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cb;->a(Lcom/aadhk/restpos/bean/Reservation;Z)Ljava/util/Map;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/v;->a(Lcom/aadhk/restpos/bean/Reservation;)V

    .line 56
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p2}, Lcom/aadhk/restpos/b/v;->a(Z)Ljava/util/Map;

    move-result-object v1

    .line 57
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->e:Lcom/aadhk/restpos/b/z;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/z;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 105
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Z)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/cb;->a(Z)Ljava/util/Map;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/v;->a(Z)Ljava/util/Map;

    move-result-object v1

    .line 93
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/Reservation;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/Reservation;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/g/x;->c:Lcom/aadhk/restpos/f/cb;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/f/cb;->b(Lcom/aadhk/restpos/bean/Reservation;Z)Ljava/util/Map;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/v;->b(Lcom/aadhk/restpos/bean/Reservation;)V

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/g/x;->d:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v1, p2}, Lcom/aadhk/restpos/b/v;->a(Z)Ljava/util/Map;

    move-result-object v1

    .line 70
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
