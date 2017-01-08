.class public Lcom/aadhk/restpos/b/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Lcom/aadhk/restpos/b/f;

.field private static d:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private b:I

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "DatabaseManager"

    sput-object v0, Lcom/aadhk/restpos/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/aadhk/restpos/b/g;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/b/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aadhk/restpos/b/f;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 75
    return-void
.end method

.method public static declared-synchronized a()Lcom/aadhk/restpos/b/f;
    .locals 4

    .prologue
    .line 78
    const-class v1, Lcom/aadhk/restpos/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aadhk/restpos/b/f;->c:Lcom/aadhk/restpos/b/f;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/aadhk/restpos/b/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not initialized, call initializeInstance(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 81
    :cond_0
    :try_start_1
    sget-object v0, Lcom/aadhk/restpos/b/f;->c:Lcom/aadhk/restpos/b/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    const-class v1, Lcom/aadhk/restpos/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aadhk/restpos/b/f;->c:Lcom/aadhk/restpos/b/f;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/aadhk/restpos/b/f;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aadhk/restpos/b/f;->c:Lcom/aadhk/restpos/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/aadhk/restpos/b/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aadhk/restpos/b/f;->b:I

    .line 87
    iget v0, p0, Lcom/aadhk/restpos/b/f;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    sget-object v0, Lcom/aadhk/restpos/b/f;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/b/f;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/b/f;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/aadhk/restpos/b/f;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/b/f;->b:I

    .line 98
    iget v0, p0, Lcom/aadhk/restpos/b/f;->b:I

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/b/f;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
