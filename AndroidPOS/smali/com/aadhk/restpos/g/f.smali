.class public final Lcom/aadhk/restpos/g/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/b/b;

.field private d:Lcom/aadhk/restpos/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/g/f;->a:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/f;->b:Lcom/aadhk/restpos/util/r;

    .line 25
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/aadhk/restpos/b/b;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/f;->c:Lcom/aadhk/restpos/b/b;

    .line 27
    new-instance v1, Lcom/aadhk/restpos/b/i;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/f;->d:Lcom/aadhk/restpos/b/i;

    .line 28
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
            "Lcom/aadhk/restpos/bean/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/g/f;->c:Lcom/aadhk/restpos/b/b;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/g/f;->d:Lcom/aadhk/restpos/b/i;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/i;->c(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
