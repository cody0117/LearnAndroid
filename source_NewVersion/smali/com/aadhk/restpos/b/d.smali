.class public final Lcom/aadhk/restpos/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "currencyCode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "currencySymbol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "currencyDesc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "isDefault"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/aadhk/restpos/b/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/product/library/bean/Currency;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 79
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/b/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "currency"

    sget-object v3, Lcom/aadhk/restpos/b/d;->a:[Ljava/lang/String;

    const-string v8, "currencyCode asc"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    .line 88
    :goto_0
    new-instance v6, Lcom/aadhk/product/library/bean/Currency;

    invoke-direct {v6}, Lcom/aadhk/product/library/bean/Currency;-><init>()V

    .line 89
    invoke-virtual {v6, v3}, Lcom/aadhk/product/library/bean/Currency;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v4}, Lcom/aadhk/product/library/bean/Currency;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v6, v5}, Lcom/aadhk/product/library/bean/Currency;->c(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, v0}, Lcom/aadhk/product/library/bean/Currency;->a(Z)V

    .line 93
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    return-object v11

    :cond_2
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public final a(Lcom/aadhk/product/library/bean/Currency;)V
    .locals 4
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 25
    const-string v1, "currencyCode"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "currencySymbol"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "currencyDesc"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "isDefault"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    iget-object v1, p0, Lcom/aadhk/restpos/b/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "currency"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 30
    return-void
.end method

.method public final a(Lcom/aadhk/product/library/bean/Currency;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    const-string v1, "currencyCode"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "currencySymbol"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "currencyDesc"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "isDefault"

    invoke-virtual {p1}, Lcom/aadhk/product/library/bean/Currency;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    iget-object v1, p0, Lcom/aadhk/restpos/b/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "currency"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currencyCode=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/b/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "currency"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currencyCode=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    return-void
.end method
