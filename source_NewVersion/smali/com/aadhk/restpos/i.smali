.class final Lcom/aadhk/restpos/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/aadhk/restpos/b/w;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 218
    invoke-virtual {v1}, Lcom/aadhk/restpos/b/w;->a()V

    .line 219
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 221
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 222
    const v1, 0x7f09026d

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 223
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 224
    return-void
.end method
