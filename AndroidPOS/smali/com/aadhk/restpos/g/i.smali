.class public final Lcom/aadhk/restpos/g/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/b/ac;

.field private d:Lcom/aadhk/restpos/b/ad;

.field private e:Lcom/aadhk/restpos/b/w;

.field private f:Lcom/aadhk/restpos/f/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/aadhk/restpos/g/i;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/i;->b:Lcom/aadhk/restpos/util/r;

    .line 47
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/aadhk/restpos/b/ac;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ac;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/i;->c:Lcom/aadhk/restpos/b/ac;

    .line 49
    new-instance v1, Lcom/aadhk/restpos/b/ad;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ad;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    .line 50
    new-instance v1, Lcom/aadhk/restpos/b/w;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/i;->e:Lcom/aadhk/restpos/b/w;

    .line 51
    new-instance v0, Lcom/aadhk/restpos/f/ab;

    iget-object v1, p0, Lcom/aadhk/restpos/g/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/i;->f:Lcom/aadhk/restpos/f/ab;

    .line 52
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
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/aadhk/restpos/g/i;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->f:Lcom/aadhk/restpos/f/ab;

    iget-object v1, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v1}, Lcom/aadhk/restpos/b/ad;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/ab;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string v1, "serviceStatus"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(I)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->e:Lcom/aadhk/restpos/b/w;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/w;->b(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
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
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/aadhk/restpos/g/i;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->f:Lcom/aadhk/restpos/f/ab;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/ab;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/i;->c:Lcom/aadhk/restpos/b/ac;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/ac;->a(Ljava/lang/String;)Lcom/aadhk/restpos/bean/User;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "serviceStatus"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Company;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->a(Lcom/aadhk/restpos/bean/Company;I)V

    .line 113
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->a(Ljava/util/List;I)V

    .line 93
    return-void
.end method

.method public final b(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Category;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->b(Ljava/util/List;I)V

    .line 97
    return-void
.end method

.method public final c(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->c(Ljava/util/List;I)V

    .line 101
    return-void
.end method

.method public final d(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->d(Ljava/util/List;I)V

    .line 105
    return-void
.end method

.method public final e(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Modifier;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->e(Ljava/util/List;I)V

    .line 109
    return-void
.end method

.method public final f(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->f(Ljava/util/List;I)V

    .line 117
    return-void
.end method

.method public final g(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->g(Ljava/util/List;I)V

    .line 121
    return-void
.end method

.method public final h(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Currency;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->h(Ljava/util/List;I)V

    .line 125
    return-void
.end method

.method public final i(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->i(Ljava/util/List;I)V

    .line 129
    return-void
.end method

.method public final j(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->j(Ljava/util/List;I)V

    .line 132
    return-void
.end method

.method public final k(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->k(Ljava/util/List;I)V

    .line 135
    return-void
.end method

.method public final l(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->l(Ljava/util/List;I)V

    .line 138
    return-void
.end method

.method public final m(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PriceSchedule;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->m(Ljava/util/List;I)V

    .line 141
    return-void
.end method

.method public final n(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->n(Ljava/util/List;I)V

    .line 144
    return-void
.end method

.method public final o(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->o(Ljava/util/List;I)V

    .line 147
    return-void
.end method

.method public final p(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ServiceFee;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->q(Ljava/util/List;I)V

    .line 150
    return-void
.end method

.method public final q(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/PaymentMethod;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/g/i;->d:Lcom/aadhk/restpos/b/ad;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/ad;->p(Ljava/util/List;I)V

    .line 153
    return-void
.end method
