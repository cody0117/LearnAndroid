.class public final Lcom/aadhk/restpos/b/ac;
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

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "role"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aadhk/restpos/b/ac;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/aadhk/restpos/bean/User;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_user"

    sget-object v3, Lcom/aadhk/restpos/b/ac;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "password =\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v5, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v5}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 64
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 65
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 69
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 70
    return-object v5
.end method

.method public final a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 96
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_user"

    sget-object v3, Lcom/aadhk/restpos/b/ac;->a:[Ljava/lang/String;

    const-string v4, "id!=1"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    new-instance v2, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 103
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 104
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 107
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    return-object v10
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rest_user"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/User;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "role"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object v1, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_user"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 40
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/User;)V
    .locals 5
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "role"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    iget-object v1, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_user"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/User;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/b/ac;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rest_user"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "role=1 and password =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 79
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    return v1
.end method
