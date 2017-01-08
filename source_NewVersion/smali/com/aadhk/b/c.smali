.class public final Lcom/aadhk/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Lcom/aadhk/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orderId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/b/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/aadhk/b/d;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/b/d;-><init>(Lcom/aadhk/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/b/c;->c:Lcom/aadhk/b/d;

    .line 28
    iget-object v0, p0, Lcom/aadhk/b/c;->c:Lcom/aadhk/b/d;

    invoke-virtual {v0}, Lcom/aadhk/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v0, p0, Lcom/aadhk/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchase"

    sget-object v2, Lcom/aadhk/b/c;->b:[Ljava/lang/String;

    const-string v3, "itemId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/b/c;->c:Lcom/aadhk/b/d;

    invoke-virtual {v0}, Lcom/aadhk/b/d;->close()V

    .line 42
    return-void
.end method

.method public final a(Lcom/aadhk/a/m;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/aadhk/a/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "itemId"

    invoke-virtual {p1}, Lcom/aadhk/a/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "itemType"

    invoke-virtual {p1}, Lcom/aadhk/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "key"

    invoke-virtual {p1}, Lcom/aadhk/a/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "purchaseTime"

    invoke-virtual {p1}, Lcom/aadhk/a/m;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    iget-object v1, p0, Lcom/aadhk/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 52
    return-void
.end method

.method public final b()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/aadhk/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchase"

    sget-object v2, Lcom/aadhk/b/c;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
