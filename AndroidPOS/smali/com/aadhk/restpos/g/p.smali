.class public final Lcom/aadhk/restpos/g/p;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/f/bg;

.field private d:Lcom/aadhk/restpos/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/g/p;->a:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/p;->b:Lcom/aadhk/restpos/util/r;

    .line 26
    new-instance v0, Lcom/aadhk/restpos/f/bg;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/p;->c:Lcom/aadhk/restpos/f/bg;

    .line 27
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/aadhk/restpos/b/a;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/CloseOutCashRegister;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/CloseOutCashRegister;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/aadhk/restpos/g/p;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/g/p;->c:Lcom/aadhk/restpos/f/bg;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bg;->a(Lcom/aadhk/restpos/bean/CloseOutCashRegister;)Ljava/util/Map;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/a;->a(Lcom/aadhk/restpos/bean/CloseOutCashRegister;)V

    .line 37
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
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
    const/4 v4, 0x0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/aadhk/restpos/g/p;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/g/p;->c:Lcom/aadhk/restpos/f/bg;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bg;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v2

    .line 50
    iget-object v4, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, p1, v5}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v4

    .line 51
    iget-object v6, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, p1, v7}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v6

    .line 52
    iget-object v8, p0, Lcom/aadhk/restpos/g/p;->d:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v8, v1, p1}, Lcom/aadhk/restpos/b/a;->b(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    .line 53
    const-string v10, "serviceStatus"

    const-string v11, "1"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v10, "serviceLastTime"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "serviceStartAmount"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "servicePayingAmount"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "servicePayoutAmount"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "serviceOrdersTotalAmount"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
